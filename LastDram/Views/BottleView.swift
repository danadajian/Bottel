import SwiftUI

struct BottleView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    let bottle: ListBottlesQuery.Data.ListBottle.Item

    @State var showAlert = false
    @State var dateOpened: String = ""
    @State var dateAcquired: String = ""

    func deleteBottle() {
        Network.shared.apollo.perform(mutation: DeleteBottleMutation(
                input: DeleteBottleInput(id: bottle.id)
        )) { result in
            switch result {
            case.success:
                showAlert = true
                presentationMode.wrappedValue.dismiss()
            case.failure(let error):
                print("Error: \(error)")
            }
        }
    }

    var body: some View {
        VStack {
            Spacer()
            Image("last-dram")
            Spacer()
            if let dateOpened = bottle.dateOpened {
                Text("""
                     This bottle has been open for 
                     \(getNumberOfDaysElapsed(fromDate: dateOpened, toDate: getFormattedDate(date: Date()))) days.
                     """)
            }
            HStack {
                Text("Date acquired: ")
                TextField(dateAcquired, text: $dateAcquired)
                        .textFieldStyle(.roundedBorder)
                        .multilineTextAlignment(.center)
                        .padding()
                        .onAppear {
                            guard let dateAcquired = bottle.dateAcquired else { return }
                            self.dateAcquired = dateAcquired
                        }
            }
            HStack {
                Text("Date opened: ")
                TextField(dateOpened, text: $dateOpened)
                        .textFieldStyle(.roundedBorder)
                        .multilineTextAlignment(.center)
                        .padding()
                        .onAppear {
                            guard let dateOpened = bottle.dateOpened else { return }
                            self.dateOpened = dateOpened
                        }
            }
            Spacer()
            Button("Delete Bottle", action: deleteBottle)
                .padding().font(.title2).buttonStyle(.borderedProminent)
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Success!"),
                        message: Text("\(bottle.name!) has been deleted.")
                    )
                }
        }
        .navigationTitle(bottle.name!)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BottleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BottleView(bottle: ListBottlesQuery.Data.ListBottle.Item(
                id: "123",
                userId: "dummy",
                name: "dummy bottle",
                dateOpened: "2022-02-05"
            ))
        }
    }
}
