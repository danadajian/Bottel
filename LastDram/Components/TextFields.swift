import SwiftUI

struct StandardTextField: View {
    var text: String
    var binding: Binding<String>

    var body: some View {
        TextField(text, text: binding)
            .font(.title3)
            .textFieldStyle(.roundedBorder)
            .multilineTextAlignment(.center)
    }
}

struct SecureTextField: View {
    var text: String
    var binding: Binding<String>

    var body: some View {
        SecureField(text, text: binding)
            .font(.title3)
            .textFieldStyle(.roundedBorder)
            .multilineTextAlignment(.center)
    }
}
