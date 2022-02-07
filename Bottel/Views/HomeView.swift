import SwiftUI
import Apollo

typealias Bottle = ListBottlesQuery.Data.ListBottle.Item

struct HomeView: View {
    @State var bottles: [Bottle] = []

    let userId: String
    
    @Sendable func fetchBottles() {
        Network.shared.apollo.clearCache()
        Network.shared.apollo.fetch(query: ListBottlesQuery(filter: BottleFilterInput(userId: TableStringFilterInput(eq: userId)))) { result in
            switch result {
            case.success(let graphQLResult):
                DispatchQueue.main.async {
                    if let bottles = graphQLResult.data?.listBottles?.items {
                        self.bottles = bottles as! [Bottle]
                    }
                }
            case.failure(let error):
                print("Error: \(error)")
            }
        }
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
                NewBottleView(userId: userId)
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
