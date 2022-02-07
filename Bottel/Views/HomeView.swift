import SwiftUI
import Amplify
import Apollo
import AWSMobileClientXCF

typealias Bottle = ListBottlesQuery.Data.ListBottle.Item

struct HomeView: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    @State var bottles: [Bottle] = []
    
    let user: AuthUser
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    ForEach(bottles, id: \.id) {
                        bottle in NavigationLink(bottle.name!, destination: BottleView(bottle: bottle))
                    }
                }
                .navigationTitle("My Collection")
            }
            
            FooterView()
        }
        .onAppear(perform: {
            Network.shared.apollo.fetch(query: ListBottlesQuery()) { result in
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
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    struct DummyUser: AuthUser {
        let userId: String = "1"
        let username: String = "dummy"
    }
    
    static var previews: some View {
        HomeView(user: DummyUser())
    }
}
