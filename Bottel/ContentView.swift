import SwiftUI

struct ContentView: View {
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
    static var previews: some View {
        ContentView()
    }
}
