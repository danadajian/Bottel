import SwiftUI

struct Footer: View {
    @State private var showPopover = false
    @State private var showAlert = false
    
    var body: some View {
        ZStack {
            Button(action: { showPopover = true }) {
                Image(systemName: "plus.circle.fill")
                    .font(.system(size: 90))
            }.popover(isPresented: $showPopover) {
                NewBottleView()
            }
            HStack {
                Button(action: {}) {
                    Label("Collection", systemImage: "list.bullet.circle.fill")
                }.padding()
                Spacer()
            }
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
        }
    }
}

struct Footer_Previews: PreviewProvider {
    static var previews: some View {
        Footer()
.previewInterfaceOrientation(.portrait)
    }
}
