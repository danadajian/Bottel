import SwiftUI

struct BottleView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    let bottle: Bottle

    @State var bottleName: String = ""
    @State var dateOpened: String = ""
    @State var dateAcquired: String = ""
    @State var showAlert = false
    @State var bottleImage: UIImage?

    func openBottle() {
        dateOpened = getFormattedDate(date: Date())
    }
    func updateBottle() {
        Network.shared.apollo?.perform(mutation: UpdateUserBottleMutation(
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
        Network.shared.apollo?.perform(mutation: DeleteUserBottleMutation(
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
    func loadImage(imageUrl: String) {
        if let data = try? Data(contentsOf: URL(string: imageUrl)!) {
            if let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    bottleImage = image
                }
            }
        }
    }

    var body: some View {
        VStack {
            if let bottleImage = bottleImage {
                Image(uiImage: bottleImage)
                        .resizable()
                        .scaledToFit()
            } else {
                Image("last-dram")
            }
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
                if let imageUrl = bottle.imageUrl {
                    loadImage(imageUrl: imageUrl)
                }
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
            BottleView(bottle: Bottle(
                id: "123",
                name: "dummy bottle",
                userId: "dummy",
                dateOpened: "2022-02-05"
            ))
        }
    }
}
