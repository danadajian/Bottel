import SwiftUI
import Amplify
import AWSCognitoAuthPlugin

@main
struct BottelApp: App {
    @ObservedObject var sessionManager = SessionManager()
    
    init() {
        try! Amplify.add(plugin: AWSCognitoAuthPlugin())
        try! Amplify.configure()
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
