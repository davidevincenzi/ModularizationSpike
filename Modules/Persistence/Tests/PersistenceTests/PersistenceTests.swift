import XCTest
@testable import Persistence

final class CoreDataDocumentsDataSourceTests: XCTestCase {
    let dataSource: DocumentsDataSource! = CoreDataDocumentsDataSource()
    
    func testExample() {
        
        XCTAssertEqual(dataSource.documents().count, 1)
    }
}
