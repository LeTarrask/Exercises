//
//  ExercisesTests2.swift
//  ExercisesTests
//
//  Created by Alex Luna on 19/02/2021.
//

import XCTest
@testable import Exercises

class ExercisesTests2: XCTestCase {
    
    // este teste ferra a memoria do computador
    //    func testCalculateGrowth() throws {
    //        XCTAssert(calculateGrowth(1500, 5, 100, 5000) == 15)
    //        XCTAssert(calculateGrowth(1500000, 2.5, 10000, 2000000) == 10)
    //        XCTAssert(calculateGrowth(1500000, 0.25, 1000, 2000000) == 94)
    //    }
    
    func testSquareEveryDigit() throws {
        XCTAssertEqual(squareDigits(9119), 811181)
    }
    
    func testNumberWithDigitsInside() throws {
        XCTAssertEqual(numbersWithDigitInside(5,6), [0, 0, 0])
        XCTAssertEqual(numbersWithDigitInside(7,6), [1, 6, 6])
        XCTAssertEqual(numbersWithDigitInside(11,1), [3, 22, 110])
        XCTAssertEqual(numbersWithDigitInside(20,0), [2, 30, 200])
        XCTAssertEqual(numbersWithDigitInside(44,4), [9, 286, 5955146588160])
    }
    
    func testCountInTheAmazon() throws {
        XCTAssertEqual(countArare(1), "anane")
        XCTAssertEqual(countArare(2), "adak")
        XCTAssertEqual(countArare(3), "adak anane")
        XCTAssertEqual(countArare(5), "adak adak anane")
    }
    
    func testAdd() throws {
        XCTAssertEqual(functionalAdd(1)(3), 4, "add(1)(3) does not equal 4")
        XCTAssertEqual(functionalAdd(2)(2), 4, "add(2)(2) does not equal 4")
        XCTAssertEqual(functionalAdd(0)(-15), -15, "add(0)(-15)")
        XCTAssertEqual(functionalAdd(10)(3), 13, "add(10)(3) does not equal 13")
        XCTAssertEqual(functionalAdd(100)(23), 123, "add(100)(23) does not equal 123")
    }
    
    func testRowSumOddNumbers() throws {
        XCTAssertEqual(rowSumOddNumbers(1), 1)
        XCTAssertEqual(rowSumOddNumbers(2), 8)
        XCTAssertEqual(rowSumOddNumbers(13), 2197)
        XCTAssertEqual(rowSumOddNumbers(19), 6859)
        XCTAssertEqual(rowSumOddNumbers(41), 68921)
        XCTAssertEqual(rowSumOddNumbers(42), 74088)
        XCTAssertEqual(rowSumOddNumbers(74), 405224)
        XCTAssertEqual(rowSumOddNumbers(86), 636056)
        XCTAssertEqual(rowSumOddNumbers(93), 804357)
        XCTAssertEqual(rowSumOddNumbers(101), 1030301)
    }
    
    func testMaximumMultiple() throws {
        XCTAssertEqual(maxMultiple(2, 7), 6)
        XCTAssertEqual(maxMultiple(3, 10), 9)
        XCTAssertEqual(maxMultiple(7, 17), 14)
        XCTAssertEqual(maxMultiple(10, 50), 50)
        XCTAssertEqual(maxMultiple(37, 200), 185)
        XCTAssertEqual(maxMultiple(7, 100), 98)
    }
}

