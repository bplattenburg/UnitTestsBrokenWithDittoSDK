import XCTest
@testable import UnitTestsBrokenWithDittoSDK

final class UnitTestsBrokenWithDittoSDKTests: XCTestCase {
    func testExample() throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
    }

    func testBroken() throws {
        XCTFail("broken on purpose")
    }
}
