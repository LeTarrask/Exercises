//
//  ExercisesTests.swift
//  ExercisesTests
//
//  Created by Alex Luna on 18/02/2021.
//

import XCTest
@testable import Exercises

class ExercisesTest: XCTestCase {
    func testFindOutlier() throws {
        XCTAssert(findOutlier([1, 33, 10053359313, 2, 1, 1, 1, 1, 1, 1, -3, 9]) == 2)
    }
    
    func testFindMultiples() throws {
        XCTAssert(multiplyMultiples(10) == 23)
    }
    
    func testSplitElementsFromarray() throws {
        XCTAssert(splitElementsFromArray([-32,-39,-35,-41]) == [-32, -35, -39, -41])
    }
    
    func testAlphabetWar() throws {
        XCTAssert(alphabetWar(fighters: "z") == "Right side wins!")
        XCTAssert(alphabetWar(fighters: "zdqmwpbs") == "Let's fight again!")
        XCTAssert(alphabetWar(fighters: "zzzzs") == "Right side wins!")
        XCTAssert(alphabetWar(fighters: "wwwwwwz") == "Left side wins!")
    }
    
    func testJosephusSurvivor() throws {
        XCTAssertEqual(josephusSurvivor(7, 3), 4)
        XCTAssertEqual(josephusSurvivor(11, 19), 10)
        XCTAssertEqual(josephusSurvivor(40, 3), 28)
        XCTAssertEqual(josephusSurvivor(14, 2), 13)
        XCTAssertEqual(josephusSurvivor(100, 1), 100)
        XCTAssertEqual(josephusSurvivor(1, 300), 1)
        XCTAssertEqual(josephusSurvivor(2, 300), 1)
        XCTAssertEqual(josephusSurvivor(5, 300), 1)
        XCTAssertEqual(josephusSurvivor(7, 300), 7)
        XCTAssertEqual(josephusSurvivor(300, 300), 265)
    }
    
    func testMovies() throws {
        XCTAssertEqual(movie(card: 500, ticket: 15, perc: 0.9), 43)
        XCTAssertEqual(movie(card: 100, ticket: 10, perc: 0.95), 24)
    }
}
