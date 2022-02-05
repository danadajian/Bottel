import Foundation

struct Bottle: Identifiable {
    let name: String
    let dateOpened: Date? = nil
    let id = UUID()
}
