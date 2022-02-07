import SwiftUI

struct NewBottleView: View {
    @EnvironmentObject var sessionManager: SessionManager

    @State var bottleName: String = ""
    @State var dateOpened = Date()
    @State var dateAcquired = Date()
    @State var showPopover = false
    @State var isNewBottle = false

    let userId: String

    func createBottle() {
        Network.shared.apollo.perform(mutation: CreateBottleMutation(
                input: CreateBottleInput(
                        id: UUID().uuidString,
                        userId: userId,
                        name: bottleName,
                        dateOpened: DateFormatter().string(from: dateOpened),
                        dateAcquired: DateFormatter().string(from: dateAcquired)
                )
        )) { result in
            switch result {
            case.success(_):
                DispatchQueue.main.async {
                    showPopover = false
                }
            case.failure(let error):
                print("Error: \(error)")
            }
        }
    }
    
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
                        selection: $dateOpened,
                        displayedComponents: [.date]
                    )
                    .font(.title3)
                    .fixedSize()
                }
                
                Spacer()
                
                Button("Add", action: createBottle)
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
            NewBottleView(showPopover: false, userId: "123")
            NewBottleView(showPopover: true, userId: "123")
        }
    }
}
