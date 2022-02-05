import SwiftUI

struct BottleView: View {
    let name: String
    let dateOpened: Date? = Date()
    
    var body: some View {
        VStack {
            Spacer()
            Image("bottel")
            Spacer()
            Text("Date opened: \(getDate(date: dateOpened ?? Date()))").padding()
            Text("This bottle has been open for ")
            Spacer()
        }
        .navigationTitle(name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

func getDate(date: Date) -> String {
    let dateFormatter = DateFormatter()
    return dateFormatter.string(from: date)
}

struct BottleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BottleView(
                name: "Example Bottle"
            )
        }
    }
}
