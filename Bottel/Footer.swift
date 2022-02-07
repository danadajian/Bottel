import SwiftUI

struct Footer: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    @State var showAlert = false
    
    var body: some View {
        ZStack {
            NewBottle()
            
            HStack {
                Spacer()
                
                Button(action: { showAlert = true }) {
                    Label("Friends", systemImage: "person.circle.fill")
                }.alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Feature  Available"),
                        message: Text("This feature is currently in development.")
                    )
                }.padding()
            }
            
            HStack {
                Button(action: sessionManager.signOut) {
                    Label("Sign Out", systemImage: "list.bullet.circle.fill")
                }.padding()
                
                Spacer()
            }
            
            
        }
    }
}

struct Footer_Previews: PreviewProvider {
    static var previews: some View {
        Footer()
.previewInterfaceOrientation(.portrait)
    }
}
