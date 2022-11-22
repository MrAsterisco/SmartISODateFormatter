import XCTest
@testable import SmartISODateFormatter

final class SmartISODateFormatterTests: XCTestCase {
  func testParseCompleteDate() {
    // GIVEN
    let input = "2022-11-11T11:30:00Z"
    let expectedResult: TimeInterval = 1668166200
    let formatter = SmartISODateFormatter()
    
    // WHEN
    let date = formatter.date(from: input)
    
    // THEN
    XCTAssertNotNil(date)
    XCTAssertEqual(expectedResult, date?.timeIntervalSince1970)
  }
  
  func testParseCompleteDateWithMilliseconds() {
    // GIVEN
    let input = "2022-11-11T11:30:00.344Z"
    let expectedResult: TimeInterval = 1668166200.344
    let formatter = SmartISODateFormatter()
    
    // WHEN
    let date = formatter.date(from: input)
    
    // THEN
    XCTAssertNotNil(date)
    XCTAssertEqual(expectedResult, date?.timeIntervalSince1970)
  }
  
  func testParseJustDate() {
    // GIVEN
    let input = "2022-11-11"
    let expectedResult: TimeInterval = 1668124800
    let formatter = SmartISODateFormatter()
    
    // WHEN
    let date = formatter.date(from: input)
    
    // THEN
    XCTAssertNotNil(date)
    XCTAssertEqual(expectedResult, date?.timeIntervalSince1970)
  }
  
  func testParseDateWithTimezone() {
    // GIVEN
    let input = "2022-11-11T11:30:00+01:00"
    let expectedResult: TimeInterval = 1668162600
    let formatter = SmartISODateFormatter()
    
    // WHEN
    let date = formatter.date(from: input)
    
    // THEN
    XCTAssertNotNil(date)
    XCTAssertEqual(expectedResult, date?.timeIntervalSince1970)
  }
  
  func testParseDateWithMillisecondsAndTimezone() {
    // GIVEN
    let input = "2022-11-11T11:30:00.344+01:00"
    let expectedResult: TimeInterval = 1668162600.344
    let formatter = SmartISODateFormatter()
    
    // WHEN
    let date = formatter.date(from: input)
    
    // THEN
    XCTAssertNotNil(date)
    XCTAssertEqual(expectedResult, date?.timeIntervalSince1970)
  }
}
