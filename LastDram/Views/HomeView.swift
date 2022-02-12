import SwiftUI

typealias Bottle = ListUserBottlesQuery.Data.ListUserBottle.Item
typealias Bottles = [Bottle]

struct HomeView: View {
    @EnvironmentObject var sessionManager: SessionManager

    @State var bottlesArray: [Bottles] = []
    @State var pageNumber: Int = -1
    @State var bottles: Bottles?
    @State var nextToken: String?
    @State var showPopover = false
    @State var isError = false

    let userId: String

    @Sendable func fetchBottles(nextToken: String?) {
        guard let apollo = Network.shared.apollo else {
            isError = true
            return
        }
        apollo.clearCache()
        apollo.fetch(query: ListUserBottlesQuery(
                filter: UserBottleFilterInput(userId: TableStringFilterInput(eq: userId)),
                limit: 12,
                nextToken: nextToken
        )
        ) { result in
            switch result {
            case .success(let graphQLResult):
                if let listUserBottles = graphQLResult.data?.listUserBottles {
                    let newBottles = listUserBottles.items as? Bottles ?? []
                    bottles = newBottles
                    bottlesArray.append(newBottles)
                    pageNumber += 1
                    self.nextToken = listUserBottles.nextToken
                }
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }

    func onBottleChange() {
        self.pageNumber = 0
        self.bottlesArray = []
        self.nextToken = nil
        fetchBottles(nextToken: nil)
        dismissPopover()
    }

    func displayPopover() {
        showPopover = true
    }

    func dismissPopover() {
        showPopover = false
    }

    var body: some View {
        VStack {
            NavigationView {
                if let bottles = bottles {
                    if bottles.count == 0 {
                        VStack {
                            Spacer()
                            Text("Welcome to LastDram!").font(.title)
                            Text("You have no bottles in your collection.").padding()
                            Text("Start adding bottles by tapping the \"+\" below!").padding()
                            Spacer()
                        }
                    } else {
                        ZStack {
                            List {
                                ForEach(bottles, id: \.id) { bottle in
                                    NavigationLink(
                                            bottle.name!,
                                            destination: BottleView(bottle: bottle, onBottleChange: onBottleChange)
                                    )
                                }
                            }.navigationTitle("My Bottles")
                            VStack {
                                Spacer()
                                HStack {
                                    if pageNumber > 0 {
                                        Button(action: {
                                            self.bottles = bottlesArray[pageNumber - 1]
                                            pageNumber -= 1
                                        }, label: {
                                            Label("Previous", systemImage: "arrow.backward.circle")
                                        })
                                                .padding().buttonStyle(.bordered)
                                    }
                                    Spacer()
                                    if let nextToken = nextToken {
                                        Button(action: {
                                            fetchBottles(nextToken: nextToken)
                                        }, label: {
                                            Label("Next", systemImage: "arrow.forward.circle")
                                        })
                                                .padding().buttonStyle(.bordered)
                                    } else if pageNumber + 1 < bottlesArray.count {
                                        Button(action: {
                                            self.bottles = bottlesArray[pageNumber + 1]
                                            pageNumber += 1
                                        }, label: {
                                            Label("Next", systemImage: "arrow.forward.circle")
                                        })
                                                .padding().buttonStyle(.bordered)
                                    }
                                }
                            }
                        }
                    }
                } else {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .scaleEffect(2)
                }
            }
                    .onAppear { fetchBottles(nextToken: nil) }

            ZStack {
                Button(action: displayPopover) {
                    Image(systemName: "plus.circle.fill")
                            .font(.system(size: 90))
                }.popover(isPresented: $showPopover) {
                    AddBottleView(userId: userId, onBottleChange: onBottleChange)
                }
                FooterView()
            }
        }
                .alert(isPresented: $isError) {
            Alert(title: Text("Error"),
                    message: Text("An error occurred."),
                    dismissButton: Alert.Button.default(
                            Text("Return to login"), action: { sessionManager.signOut() }
                    )
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(userId: "123")
    }
}
