import SwiftUI
import Amplify
import AWSCognitoAuthPlugin
import Apollo

@main
struct BottelApp: App {
    @ObservedObject var sessionManager = SessionManager()
    
    init() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.configure()
        } catch {
            print("Error initializing client. \(error)")
        }
        sessionManager.getCurrentAuthUser()
    }
    
    var body: some Scene {
        WindowGroup {
            switch sessionManager.authState {
            case .login:
                Login()
                    .environmentObject(sessionManager)
            case .signUp:
                SignUp()
                    .environmentObject(sessionManager)
            case .confirmCode(let username):
                Confirmation(username: username)
                    .environmentObject(sessionManager)
            case .session(let user):
                ContentView(user: user)
                    .environmentObject(sessionManager)
                    .onAppear {
                        getBottles()
                    }
            }
        }
    }
}

func getBottles() {
    let apollo = ApolloClient(url: URL(string: "https://qb5c77sbpbez5i7zv6ygbygrwy.appsync-api.us-east-1.amazonaws.com/graphql")!)
    apollo.fetch(query: ListBottlesQuery()) { result in
        switch result {
          case .success(let graphQLResult):
            if let items = graphQLResult.data?.listBottles?.items {
                print("woooooooo")
                items.forEach { print(($0?.id)! + " " + ($0?.name)!) }
            } else if let errors = graphQLResult.errors {
              // GraphQL errors
              print(errors)
            }
          case .failure(let error):
            // Network or response format errors
            print(error)
          }
    }
}
