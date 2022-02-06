import SwiftUI
import AWSAppSync
import AWSCore
import AWSMobileClientXCF
import Amplify
import AWSCognitoAuthPlugin

@main
struct BottelApp: App {
    @ObservedObject var sessionManager = SessionManager()
    
    init() {
        do {
//            guard let url = URL(string: "https://qb5c77sbpbez5i7zv6ygbygrwy.appsync-api.us-east-1.amazonaws.com") else {
//                return
//            }
//            let appSyncConfig = try AWSAppSyncClientConfiguration(
//                url: url,
//                serviceRegion: "us-east-1".aws_regionTypeValue(),
//                userPoolsAuthProvider: AWSMobileClient.default()
//            )
//
//            let appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)
//
//            appSyncClient.fetch(query: ListBottlesQuery())  { (result, error) in
//            if error != nil {
//                print(error?.localizedDescription ?? "")
//                return
//            }
//                result?.data?.listBottles?.items!.forEach { print(($0?.id)! + " " + ($0?.name)!) }
//            }
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.configure()

            print("Success!")
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
            }
        }
    }
}
