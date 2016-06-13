import XCTest
import CPango
@testable import Pango

class PangoTests: XCTestCase {

    func testPangoColor() {
        var colour = PangoColor();
        withUnsafeMutablePointer(&colour) {
            let red = ColorRef($0);
            XCTAssertTrue(red.parse(spec: "#ff0000"))
            XCTAssertEqual(red.to_string(), "#ffff00000000")
        }
    }

    func testPangoColorCopy() {
        var colour = PangoColor();
        withUnsafeMutablePointer(&colour) {
            let one = ColorRef($0);
            XCTAssertTrue(one.parse(spec: "#00ff00"))
            let two = Color(one.copy());
            defer { two.free() }
            XCTAssertEqual(two.to_string(), "#0000ffff0000")
        }
    }

}
extension PangoTests {
    static var allTests : [(String, (PangoTests) -> () throws -> Void)] {
        return [
            ("testPangoColor",      testPangoColor),
            ("testPangoColorCopy",  testPangoColorCopy),
        ]
    }
}
