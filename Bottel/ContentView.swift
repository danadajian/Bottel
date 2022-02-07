import SwiftUI
import Amplify
struct ContentView: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: AuthUser
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    ForEach(bottles) {
                        bottle in NavigationLink(bottle.name, destination: BottleView(name: bottle.name))
                    }
                }
                .navigationTitle("My Collection")
            }
            
            Footer()
        }
    }
}

let numbers = 1...20
let bottles = numbers.map { number in Bottle(name: "Bottle #\(number)") }

struct ContentView_Previews: PreviewProvider {
    struct DummyUser: AuthUser {
        let userId: String = "1"
        let username: String = "dummy"
    }
    
    static var previews: some View {
        ContentView(user: DummyUser())
    }
}
