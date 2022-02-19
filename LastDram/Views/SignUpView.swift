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
                StandardTextField(text: "Username", binding: $username)
                    .autocapitalization(.none)
                StandardTextField(text: "Email", binding: $email)
                    .autocapitalization(.none)
                SecureTextField(text: "Password", binding: $password)
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
        .padding(.horizontal)
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
