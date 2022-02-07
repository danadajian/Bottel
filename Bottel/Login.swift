import SwiftUI

struct Login: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            TextField("Username", text: $username)
            SecureField("Password", text: $password)
            Button("Login", action: {
                sessionManager.signOut()
                sessionManager.login(username: username, password: password)
            })
            
            Spacer()
            Button("Don't have an account? Sign up.", action: sessionManager.showSignUp)
        }
        .padding()
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
