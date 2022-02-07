import SwiftUI

struct Confirmation: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    @State var confirmationCode = ""
    
    let username: String
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Username: \(username)")
            TextField("Confirmation Code", text: $confirmationCode)
            Button("Confirm", action: {
                sessionManager.confirm(username: username, code: confirmationCode)
            })
        }
        .padding()
    }
}

struct Confirmation_Previews: PreviewProvider {
    static var previews: some View {
        Confirmation(username: "dummy")
    }
}
