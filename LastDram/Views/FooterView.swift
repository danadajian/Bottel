import SwiftUI

struct FooterView: View {
    @EnvironmentObject var sessionManager: SessionManager

    @State var showAlert = false

    var body: some View {
        HStack {
            Spacer()

            Button(action: sessionManager.signOut) {
                Label {
                    Text("Sign Out").foregroundColor(.primary)
                } icon: {
                    Image("sign-out").resizable().frame(width: 20, height: 20)
                }
            }
            .padding().buttonStyle(.bordered)
        }
    }
}

struct Footer_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewInterfaceOrientation(.portrait)
    }
}
