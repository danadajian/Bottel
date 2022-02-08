import SwiftUI

struct FooterView: View {
    @EnvironmentObject var sessionManager: SessionManager

    @State var showAlert = false

    var body: some View {
        HStack {
            Button { showAlert = true } label: {
                Label("Friends", systemImage: "person.circle.fill")
            }.alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Feature Unavailable"),
                    message: Text("This feature is currently in development.")
                )
            }.padding()

            Spacer()

            Button(action: sessionManager.signOut) {
                Label("Sign Out", systemImage: "list.bullet.circle.fill")
            }.padding()
        }
    }
}

struct Footer_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewInterfaceOrientation(.portrait)
    }
}
