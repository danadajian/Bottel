import SwiftUI

struct AddBottleView: View {
    @EnvironmentObject var sessionManager: SessionManager

    @State var bottleName: String = ""
    @State var dateOpened = Date()
    @State var dateAcquired = Date()
    @State var isNewBottle = true

    let userId: String
    let onBottleChange: () -> Void

    func createBottle() {
        Network.shared.apollo?.perform(mutation: CreateUserBottleMutation(
            input: CreateBottleInput(
                id: UUID().uuidString,
                userId: userId,
                name: bottleName,
                dateOpened: getFormattedDate(date: dateOpened),
                dateAcquired: getFormattedDate(date: dateAcquired)
            )
        )) { result in
            switch result {
            case.success:
                onBottleChange()
            case.failure(let error):
                print("Error: \(error)")
            }
        }
    }
    func searchBottles() {
        Network.shared.apollo?.fetch(query: ListBottlesQuery(
            filter: BottleFilterInput(name: TableStringFilterInput(contains: "")),
            limit: 10
        )) { result in
            switch result {
            case.success:
                print("Success")
            case.failure(let error):
                print("Error: \(error)")
            }
        }
    }

    var body: some View {
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
            .padding()

            DatePicker(
                "Date Acquired",
                selection: $dateAcquired,
                displayedComponents: [.date]
            )
            .font(.title3)
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

struct NewBottle_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AddBottleView(userId: "123", onBottleChange: {})
            AddBottleView(userId: "123", onBottleChange: {})
        }
    }
}
