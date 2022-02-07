import SwiftUI

struct BottleView: View {
    let bottle: ListBottlesQuery.Data.ListBottle.Item
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("bottel")
            
            Spacer()
            
            Text("Date opened: \(bottle.dateOpened ?? "")").padding()
            
            Text("This bottle has been open for ")
            
            Spacer()
        }
        .navigationTitle(bottle.name!)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BottleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BottleView(bottle: ListBottlesQuery.Data.ListBottle.Item(
                id: "123",
                userId: "dummy",
                name: "dummy bottle",
                dateOpened: "2022-02-05"
            ))
        }
    }
}
