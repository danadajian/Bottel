import SwiftUI

struct LoginView: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            Spacer()
            Text("LastDram").font(.largeTitle)
            Spacer()
            
            TextField("Username", text: $username)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
            Button("Login", action: {
                sessionManager.signOut()
                sessionManager.login(username: username, password: password)
            }).padding().font(.title2).buttonStyle(.borderedProminent)
            Text(sessionManager.authError)
                .foregroundColor(.red)
            
            Spacer()
            Button("Don't have an account? Sign up.", action: sessionManager.showSignUp)
        }
        .padding()
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
