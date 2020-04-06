import XCTest
@testable import reflectium_ipsum

final class reflectium_ipsumTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        ReflectionGenerator.CHANCE_OK_RESPONSE = 100
        XCTAssertTrue(["Ok", "OK", "Okay", "👍"].contains(ReflectionGenerator.generatiumReflectium()))
        
        ReflectionGenerator.CHANCE_OK_RESPONSE = 0
        XCTAssertFalse(["Ok", "OK", "Okay", "👍"].contains(ReflectionGenerator.generatiumReflectium()))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
