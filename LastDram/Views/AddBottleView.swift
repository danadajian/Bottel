import SwiftUI

typealias Bottle = ListBottlesQuery.Data.ListBottle.Item
typealias Bottles = [Bottle]
let categories = [
    "American Whiskey/Rye/Bourbon",
    "Armagnac/Brandy/Cognac",
    "Blended Whiskey",
    "Canadian Whisky",
    "Cordials/Liqueurs/Specialties",
    "Gin",
    "Irish Whiskey",
    "Japanese Whiskey",
    "Rum",
    "Scotch Whiskey",
    "Tequila",
    "Vermouth",
    "Vodka"
]

struct AddBottleView: View {
    @EnvironmentObject var sessionManager: SessionManager

    @State var bottleName: String = ""
    @State var dateOpened = Date()
    @State var dateAcquired = Date()
    @State var isNewBottle = true
    @State var searchText = ""
    @State var bottles: Bottles?
    @State var selectedBottle: Bottle?
    @State var category: String?

    let userId: String
    let onBottleChange: () -> Void

    func createBottle() {
        Network.shared.apollo?.perform(mutation: CreateUserBottleMutation(
            input: CreateBottleInput(
                id: UUID().uuidString,
                userId: userId,
                name: bottleName,
                dateOpened: isNewBottle ? nil : getFormattedDate(date: dateOpened),
                dateAcquired: getFormattedDate(date: dateAcquired)
            )
        )) { result in
            switch result {
            case .success:
                onBottleChange()
            case let .failure(error):
                print("Error: \(error)")
            }
        }
    }

    func searchBottles(category: String, searchText: String) {
        Network.shared.apollo?.clearCache()
        Network.shared.apollo?.fetch(query: ListBottlesQuery(
            input: ListBottlesInput(
                category: category,
                filter: BottleFilterInput(name: TableStringFilterInput(contains: searchText))
            )
        )) { result in
            switch result {
            case let .success(graphQLResult):
                if let listBottles = graphQLResult.data?.listBottles {
                    bottles = listBottles.items as? Bottles
                }
            case let .failure(error):
                print("Error: \(error)")
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

            Menu {
                ForEach(Array(categories.enumerated()), id: \.offset) { _, category in
                    Button(action: { self.category = category }, label: {
                        Text(category)
                    })
                }
            } label: {
                Text(category ?? "Select a liquor type")
            }

            SearchView(searchText: $searchText, clearSearch: clearSearch).onChange(of: searchText) { searchText in
                if searchText.isEmpty {
                    bottles = nil
                } else if let category = category {
                    searchBottles(category: category, searchText: searchText)
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
