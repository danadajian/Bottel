import SwiftUI
import Amplify

enum AuthState {
    case signUp
    case login
    case confirmCode(username: String)
    case session(user: AuthUser)
}

final class SessionManager: ObservableObject {
    @Published var authState: AuthState = .login
    @Published var authError: String = ""
    
    func getCurrentAuthUser() {
        if let user = Amplify.Auth.getCurrentUser() {
            authState = .session(user: user)
        } else {
            authState = .login
        }
    }
    
    func showSignUp() {
        authState = .signUp
        authError = ""
    }
    
    func showLogin() {
        authState = .login
        authError = ""
    }
    
    func signUp(username: String, email: String, password: String) {
        let attributes = [AuthUserAttribute(.email, value: email)]
        let options = AuthSignUpRequest.Options(userAttributes: attributes)
        _ = Amplify.Auth.signUp(username: username, password: password, options: options) { [weak self] result in
            switch result {
            case .success(let signUpResult):
                switch signUpResult.nextStep {
                case .done:
                    print("Finished sign up")
                case .confirmUser(_, _):
                    DispatchQueue.main.async {
                        self?.authState = .confirmCode(username: username)
                    }
                }
            case .failure(let error):
                DispatchQueue.main.async {
                    self?.authError = "\(error.errorDescription)\n\(error.recoverySuggestion)"
                }
            }
        }
    }
    
    func confirm(username: String, code: String) {
        _ = Amplify.Auth.confirmSignUp(for: username, confirmationCode: code) { [weak self] result in
            switch result {
            case .success(let confirmResult):
                if confirmResult.isSignupComplete {
                    DispatchQueue.main.async {
                        self?.showLogin()
                    }
                }
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func login(username: String, password: String) {
        _ = Amplify.Auth.signIn(username: username, password: password) { [weak self] result in
            switch result {
            case .success(let signInResult):
                if signInResult.isSignedIn {
                    DispatchQueue.main.async {
                        self?.getCurrentAuthUser()
                    }
                }
            case .failure(let error):
                DispatchQueue.main.async {
                    self?.authError = "\(error.errorDescription)\n\(error.recoverySuggestion)"
                }
            }
        }
    }
    
    func signOut() {
        _ = Amplify.Auth.signOut { [weak self] result in
            switch result {
            case .success:
                DispatchQueue.main.async {
                    self?.getCurrentAuthUser()
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}
