import SwiftUI
import Amplify
import Apollo
import AWSMobileClientXCF

struct ContentView: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    @State var bottles: [ListBottlesQuery.Data.ListBottle.Item] = []
    
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
            
            Footer()
        }
        .onAppear(perform: {
            Network.shared.apollo.fetch(query: ListBottlesQuery()) { result in
                switch result {
                case.success(let graphQLResult):
                    DispatchQueue.main.async {
                        if let bottles = graphQLResult.data?.listBottles?.items {
                            self.bottles = bottles as! [ListBottlesQuery.Data.ListBottle.Item]
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
        ContentView(user: DummyUser())
    }
}
