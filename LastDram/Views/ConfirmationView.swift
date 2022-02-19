import SwiftUI

struct ConfirmationView: View {
    @EnvironmentObject var sessionManager: SessionManager

    @State var confirmationCode = ""

    let username: String

    var body: some View {
        VStack {
            Spacer()

            StandardTextField(text: "Confirmation Code", binding: $confirmationCode)
            Button("Confirm", action: {
                sessionManager.confirm(username: username, code: confirmationCode)
            })
            .padding().font(.title2).buttonStyle(.borderedProminent)

            Spacer()
        }
        .padding()
    }
}

struct Confirmation_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationView(username: "dummy")
    }
}
