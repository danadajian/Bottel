import SwiftUI

struct SignUpView: View {
    @EnvironmentObject var sessionManager: SessionManager

    @State var username = ""
    @State var email = ""
    @State var password = ""

    var body: some View {
        VStack {
            Spacer()
            Text("LastDram").font(.largeTitle)
            Image("last-dram")
            Spacer()

            Group {
                TextField("Username", text: $username)
                        .font(.title3)
                        .textFieldStyle(.roundedBorder)
                        .multilineTextAlignment(.center)
                        .autocapitalization(.none)
                TextField("Email", text: $email)
                        .font(.title3)
                        .textFieldStyle(.roundedBorder)
                        .multilineTextAlignment(.center)
                        .autocapitalization(.none)
                SecureField("Password", text: $password)
                        .font(.title3)
                        .textFieldStyle(.roundedBorder)
                        .multilineTextAlignment(.center)
                        .autocapitalization(.none)
                Text("Password requirements:").font(.footnote)
                Text("Minimum 8 characters, at least one uppercase, number, and special character)")
                        .font(.footnote).multilineTextAlignment(.center)
                Button("Sign Up", action: {
                    sessionManager.signUp(username: username, email: email, password: password)
                })
                        .padding().font(.title).buttonStyle(.borderedProminent)
                Text(sessionManager.authError)
                        .foregroundColor(.red)
            }

            Spacer()
            Button("Already have an account? Log in.", action: sessionManager.showLogin).font(.title3)
            Spacer()
        }
                .padding()
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
