import XCTest
@testable import LastDram

class LastDramTests: XCTestCase {
    func test_getFormattedDate() throws {
        let result = getFormattedDate(date: Date(timeIntervalSince1970: TimeInterval(100000)))
        XCTAssertEqual(result, "01/01/70")
    }

    func test_numberOfDaysElapsed() throws {
        let result = getNumberOfDaysElapsed(fromDate: "02/06/22", toDate: "02/08/22")
        XCTAssertEqual(result, 2)
    }

    func test_numberOfDaysElapsed_same_day() throws {
        let result = getNumberOfDaysElapsed(fromDate: "02/08/22", toDate: "02/08/22")
        XCTAssertEqual(result, 0)
    }
}