import SwiftUI

struct Footer: View {
    @State var showAlert = false
    
    var body: some View {
        ZStack {
            NewBottle()
            
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
