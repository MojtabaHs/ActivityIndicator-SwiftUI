import XCTest
@testable import ActivityIndicator

final class ActivityIndicatorTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ActivityIndicator().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
