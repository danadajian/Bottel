import SwiftUI

struct ContentView: View {
    @State var loading:Bool = false
        
    var body: some View {
        VStack {
            HomeView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
