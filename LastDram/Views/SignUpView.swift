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
            Spacer()

            TextField("Username", text: $username)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .autocapitalization(.none)
            TextField("Email", text: $email)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .autocapitalization(.none)
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .autocapitalization(.none)
            Button("Sign Up", action: {
                sessionManager.signUp(username: username, email: email, password: password)
            }).padding().font(.title2).buttonStyle(.borderedProminent)
            Text(sessionManager.authError)
                .foregroundColor(.red)

            Spacer()
            Button("Already have an account? Log in.", action: sessionManager.showLogin)
        }
        .padding()
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
