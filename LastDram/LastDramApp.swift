import SwiftUI
import Amplify
import AWSCognitoAuthPlugin

@main
struct LastDramApp: App {
    @ObservedObject var sessionManager = SessionManager()

    init() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.configure()
        } catch {
            print("Failed to configure Cognito user pool.")
        }
        sessionManager.getCurrentAuthUser()
    }

    var body: some Scene {
        WindowGroup {
            switch sessionManager.authState {
            case .login:
                LoginView()
                    .environmentObject(sessionManager)
            case .signUp:
                SignUpView()
                    .environmentObject(sessionManager)
            case .confirmCode(let username):
                ConfirmationView(username: username)
                    .environmentObject(sessionManager)
            case .session(let user):
                HomeView(userId: user.userId)
                    .environmentObject(sessionManager)
            }
        }
    }
}
