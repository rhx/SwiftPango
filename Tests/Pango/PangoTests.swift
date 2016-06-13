import XCTest
import CPango
@testable import Pango

class PangoTests: XCTestCase {

    func testPangoColor() {
        var colour = PangoColor();
        let red = Color(&colour);
        XCTAssertTrue(red.parse(spec: "#ff0000"))
        XCTAssertEqual(red.to_string(), "#ffff00000000")
    }

    func testPangoColorCopy() {
        var colour = PangoColor();
        let one = Color(&colour);
        XCTAssertTrue(one.parse(spec: "#00ff00"))
        let two = Color(one.copy());
        XCTAssertEqual(two.to_string(), "#0000ffff0000")
        two.free()
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
