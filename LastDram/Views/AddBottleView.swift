import SwiftUI

typealias Bottle = ListBottlesQuery.Data.ListBottle.Item
typealias Bottles = [Bottle]

struct AddBottleView: View {
    @EnvironmentObject var sessionManager: SessionManager

    @State var bottleName: String = ""
    @State var imageUrl: String?
    @State var dateOpened = Date()
    @State var dateAcquired = Date()
    @State var isNewBottle = true
    @State var searchText = ""
    @State var bottles: Bottles?
    @State var bottleImage: UIImage?
    @State var selectedBottle: Bottle?

    let userId: String
    let onBottleChange: () -> Void

    func createBottle() {
        Network.shared.apollo?.perform(mutation: CreateUserBottleMutation(
                input: CreateBottleInput(
                        id: UUID().uuidString,
                        userId: userId,
                        name: bottleName,
                        imageUrl: selectedBottle?.imageUrl,
                        dateOpened: getFormattedDate(date: dateOpened),
                        dateAcquired: getFormattedDate(date: dateAcquired)
                )
        )) { result in
            switch result {
            case .success:
                onBottleChange()
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }

    func searchBottles(searchText: String) {
        Network.shared.apollo?.fetch(query: ListBottlesQuery(
                filter: BottleFilterInput(name: TableStringFilterInput(contains: searchText.lowercased())),
                limit: 5
        )) { result in
            switch result {
            case .success(let graphQLResult):
                if let listBottles = graphQLResult.data?.listBottles {
                    bottles = listBottles.items as? Bottles
                }
            case .failure(let error):
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

    func clearSearch() {
        bottles = nil
        searchText = ""
        withAnimation {
            UIApplication.shared.dismissKeyboard()
        }
    }

    var body: some View {
        VStack(alignment: .center) {
            Spacer()

            Text("Add a new bottle")
                    .font(.largeTitle.bold())
            SearchView(searchText: $searchText, clearSearch: clearSearch).onChange(of: searchText) { searchText in
                if searchText.isEmpty {
                    bottles = nil
                } else {
                    searchBottles(searchText: searchText)
                }
            }

            if let bottles = bottles {
                List {
                    ForEach(bottles, id: \.id) { bottle in
                        Button(bottle.name!) {
                            selectedBottle = bottle
                            bottleName = bottle.name!
                            clearSearch()
                        }
                    }
                }
            }

            if let bottleImage = bottleImage {
                Image(uiImage: bottleImage)
                        .resizable()
                        .scaledToFit()
            }

            Group {
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
            }

            Spacer()

            Button("Add", action: createBottle)
                    .font(.title)
                    .buttonStyle(.borderedProminent)

            Spacer()
        }
    }
}

extension UIApplication {
    func dismissKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
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
