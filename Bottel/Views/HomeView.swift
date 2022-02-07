import SwiftUI
import Apollo

typealias Bottles = [ListBottlesQuery.Data.ListBottle.Item]

struct HomeView: View {
    @State var bottles: Bottles = []
    @State var showPopover = false

    let userId: String
    
    @Sendable func fetchBottles() {
        Network.shared.apollo.clearCache()
        Network.shared.apollo.fetch(query: ListBottlesQuery(filter: BottleFilterInput(userId: TableStringFilterInput(eq: userId)))) { result in
            switch result {
            case.success(let graphQLResult):
                if let bottles = graphQLResult.data?.listBottles?.items {
                    self.bottles = bottles as! Bottles
                }
            case.failure(let error):
                print("Error: \(error)")
            }
        }
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
                List {
                    ForEach(bottles.sorted(by: { $0.name! < $1.name! }), id: \.id) {
                        bottle in NavigationLink(bottle.name!, destination: BottleView(bottle: bottle))
                    }
                }
                .navigationTitle("My Collection")
                .onAppear(perform: fetchBottles)
                .refreshable(action: fetchBottles)
            }

            ZStack {
                Button(action: displayPopover) {
                    Image(systemName: "plus.circle.fill")
                            .font(.system(size: 90))
                }.popover(isPresented: $showPopover) {
                    NewBottleView(userId: userId, onBottleCreate: {
                        fetchBottles()
                        dismissPopover()
                    })
                }
                FooterView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(userId: "123")
    }
}
