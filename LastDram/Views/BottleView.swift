import SwiftUI

struct BottleView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    let bottle: ListBottlesQuery.Data.ListBottle.Item

    @State var bottleName: String = ""
    @State var dateOpened: String = ""
    @State var dateAcquired: String = ""
    @State var showAlert = false

    func openBottle() {
        dateOpened = getFormattedDate(date: Date())
    }
    func updateBottle() {
        Network.shared.apollo?.perform(mutation: UpdateBottleMutation(
            input: UpdateBottleInput(
                    id: bottle.id,
                    name: bottleName,
                    dateOpened: dateOpened,
                    dateAcquired: dateAcquired
            )
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
    func deleteBottle() {
        Network.shared.apollo?.perform(mutation: DeleteBottleMutation(
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
            if !dateOpened.isEmpty {
                Text("""
                     This bottle has been open for \(getNumberOfDaysElapsed(
                        fromDate: dateOpened, toDate: getFormattedDate(date: Date()))) days.
                     """)
            }
            HStack {
                Text("Bottle name:")
                TextField(bottleName, text: $bottleName)
                        .textFieldStyle(.roundedBorder)
                        .multilineTextAlignment(.center)
                        .padding()
                        .onAppear {
                            guard let name = bottle.name else { return }
                            self.bottleName = name
                        }
            }
            HStack {
                Text("Date acquired:")
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
                if dateOpened.isEmpty {
                    Text("This bottle is not yet open.")
                    Button("Open Bottle", action: openBottle)
                            .padding().font(.title3).buttonStyle(.borderedProminent)
                } else {
                    Text("Date opened:")
                    TextField(dateOpened, text: $dateOpened)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.center)
                            .padding()

                }
            }.onAppear {
                guard let dateOpened = bottle.dateOpened else {
                    return
                }
                self.dateOpened = dateOpened
            }
            Spacer()
            HStack {
                Button("Update Bottle", action: updateBottle)
                        .padding().font(.title3).buttonStyle(.borderedProminent)
                        .alert(isPresented: $showAlert) {
                            Alert(
                                    title: Text("Success!"),
                                    message: Text("\(bottleName) has been updated.")
                            )
                        }
                Button("Delete Bottle", action: deleteBottle)
                        .padding().font(.title3).buttonStyle(.borderedProminent)
                        .alert(isPresented: $showAlert) {
                            Alert(
                                    title: Text("Success!"),
                                    message: Text("\(bottleName) has been deleted.")
                            )
                        }
            }
        }
        .navigationTitle(bottleName)
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
