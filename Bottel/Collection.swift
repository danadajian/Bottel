import SwiftUI

struct Collection: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(bottles) {
                    bottle in NavigationLink(bottle.name, destination: BottleView(name: bottle.name))
                }
            }
            .navigationTitle("My Collection")
        }
    }
}

let numbers = 1...20
let bottles = numbers.map { number in Bottle(name: "Bottle #\(number)") }

struct Collection_Previews: PreviewProvider {
    static var previews: some View {
        Collection()
    }
}
