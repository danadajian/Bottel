import SwiftUI

struct NewBottleView: View {
    @State var bottleName: String = ""
    @State var date = Date()
    @State var showPopover = false
    @State var isNewBottle = false
    
    var body: some View {
        Button(action: { showPopover = true }) {
            Image(systemName: "plus.circle.fill")
                .font(.system(size: 90))
        }.popover(isPresented: $showPopover) {
            VStack(alignment: .center) {
                Spacer()
                
                Text("Add a new bottle")
                    .font(.largeTitle.bold())
                
                Spacer()
                
                TextField("Name", text: $bottleName)
                    .font(.title3)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                    .textInputAutocapitalization(.words)
                    .padding()
                
                Toggle(isOn: $isNewBottle) {
                    Text("New Bottle")
                        .font(.title3)
                }
                .fixedSize()
                
                if !isNewBottle {
                    DatePicker(
                        "Date Opened",
                        selection: $date,
                        displayedComponents: [.date]
                    )
                    .font(.title3)
                    .fixedSize()
                }
                
                Spacer()
                
                Button("Add", action: { showPopover = false })
                    .font(.title)
                    .buttonStyle(.borderedProminent)
                
                Spacer()
            }
        }
    }
}

struct NewBottle_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NewBottleView(showPopover: false)
            NewBottleView(showPopover: true)
        }
    }
}
