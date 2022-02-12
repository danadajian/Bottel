import SwiftUI

struct LoginView: View {
    @EnvironmentObject var sessionManager: SessionManager

    @State var username = ""
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
                SecureField("Password", text: $password)
                        .font(.title3)
                        .textFieldStyle(.roundedBorder)
                        .multilineTextAlignment(.center)
                        .autocapitalization(.none)
                Button("Login", action: {
                    sessionManager.signOut()
                    sessionManager.login(username: username, password: password)
                })
                        .padding().font(.title).buttonStyle(.borderedProminent)
                Text(sessionManager.authError)
                        .foregroundColor(.red)
            }

            Spacer()
            Button("Don't have an account? Sign up.", action: sessionManager.showSignUp).font(.title3)
            Spacer()
        }
        .padding()
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}