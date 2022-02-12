import SwiftUI

struct SearchView: View {
    @Binding var searchText: String
    let clearSearch: () -> Void

    var body: some View {
        ZStack {
            Rectangle()
                    .foregroundColor(.white)
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search bottles", text: $searchText)
                        .foregroundColor(.black)
                Button(action: clearSearch) {
                    Image(systemName: "x.circle.fill")
                }
            }
                    .foregroundColor(.gray)
                    .padding()
        }
                .frame(height: 40)
                .cornerRadius(13)
                .padding(.horizontal)
    }
}
