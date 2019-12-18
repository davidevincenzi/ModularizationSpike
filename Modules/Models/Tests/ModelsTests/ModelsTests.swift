import XCTest
@testable import Models

fileprivate struct DocumentProtocolMock: DocumentProtocol {
    var name: String
}

final class DocumentProtocolTests: XCTestCase {
    func testExample() {
        let document = DocumentProtocolMock(name: "something")
        
        XCTAssertEqual(document.uppercasedName, "SOMETHING")
    }
}
