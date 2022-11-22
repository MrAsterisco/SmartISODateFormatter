import XCTest
@testable import SmartISODateFormatter

final class DateDecodingStrategyTests: XCTestCase {
  struct Item: Decodable {
    let date: Date
  }
  
  func testDecodingJSON() throws {
    // GIVEN
    let json = "{\"date\": \"2022-11-11\"}"
    let expectedResult: TimeInterval = 1668124800
    let jsonDecoder = JSONDecoder()
    
    // WHEN
    jsonDecoder.dateDecodingStrategy = .smartISO8601
    let result = try jsonDecoder.decode(Item.self, from: json.data(using: .utf8)!)
    
    // THEN
    XCTAssertEqual(expectedResult, result.date.timeIntervalSince1970)
  }
}
