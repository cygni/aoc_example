import XCTest
@testable import AoC

final class AoCTests: XCTestCase {
    let input = [1337, 42]
    
    func testSolution1() throws {
        XCTAssertEqual(AoC(input).getSolutionPart1(), 1379)
    }
    
    func testSolution2() throws {
        XCTAssertEqual(AoC(input).getSolutionPart2(), 56154)
    }
}
