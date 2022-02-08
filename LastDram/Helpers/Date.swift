import Foundation

func getNumberOfDaysElapsed(fromDate: String, toDate: String) -> Int {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MM/dd/yy"
    let formattedStartDate = dateFormatter.date(from: fromDate)!
    let formattedEndDate = dateFormatter.date(from: toDate)!

    return Calendar.current.dateComponents([.day], from: formattedStartDate, to: formattedEndDate).day!
}

func getFormattedDate(date: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "MM/dd/yy"
    return formatter.string(from: date)
}
