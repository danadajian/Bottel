import SwiftUI
import AWSAppSync
import AWSCore
import AWSMobileClientXCF
import Amplify
import AWSCognitoAuthPlugin

@main
struct BottelApp: App {
    init() {
        do {
//            try Amplify.add(plugin: AWSCognitoAuthPlugin())
//            try Amplify.configure()
            
            guard let url = URL(string: "https://qb5c77sbpbez5i7zv6ygbygrwy.appsync-api.us-east-1.amazonaws.com") else {
                return
            }
            let appSyncConfig = try AWSAppSyncClientConfiguration(
                url: url,
                serviceRegion: "us-east-1".aws_regionTypeValue(),
                userPoolsAuthProvider: AWSMobileClient.default()
            )

            let appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)

            appSyncClient.fetch(query: ListBottlesQuery())  { (result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
            }
                result?.data?.listBottles?.items!.forEach { print(($0?.id)! + " " + ($0?.name)!) }
            }

            print("AppSyncClient initialized")
        } catch {
            print("Error initializing AppSync client. \(error)")
        }
    }
    
    var body: some Scene {
        
        
        return WindowGroup {
            ContentView()
        }
    }
}

extension AWSMobileClient: AWSCognitoUserPoolsAuthProviderAsync {
    public func getLatestAuthToken(_ callback: @escaping (String?, Error?) -> Void) {
        getTokens { (tokens, error) in
            if error != nil {
                callback(nil, error)
            } else {
                callback(tokens?.idToken?.tokenString, nil)
            }
        }
    }
}
