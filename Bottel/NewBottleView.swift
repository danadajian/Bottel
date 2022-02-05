import SwiftUI

struct NewBottleView: View {
    @State private var bottleName: String = ""
    @State private var date = Date()
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            Text("Add a new bottle")
                .font(.largeTitle.bold())
            Spacer()
            TextField("Name", text: $bottleName)
                .font(.title3)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .textInputAutocapitalization(.words)
                .padding()
            DatePicker(
                "Date Opened",
                selection: $date,
                displayedComponents: [.date]
            )
            .font(.title3)
            .fixedSize()
            Spacer()
            Button("Add", action: {})
                .font(.title)
                .buttonStyle(.borderedProminent)
            Spacer()
        }
    }
}

struct NewBottleView_Previews: PreviewProvider {
    static var previews: some View {
        NewBottleView()
    }
}
