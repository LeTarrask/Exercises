//
//  ExercisesTest6.swift
//  ExercisesTests
//
//  Created by Alex Luna on 09/03/2021.
//

import XCTest
@testable import Exercises

class ExercisesTest6: XCTestCase {
    
    var allTests = [
        ("Basic Tests", testBasicTests),
    ]
    
    func testBasicTests() {
        let expectedValues = [6, 4, 5, 8, 16]
        let inputsToBeTested = [(1, 3), (3, 3), (2, 3), (3, 5), (7, 11)]
        for (inputs, expectedValue) in zip(inputsToBeTested, expectedValues) {
            let result = overTheRoad(address: inputs.0, street: inputs.1)
            XCTAssertEqual(result, expectedValue, "Testing for address = \(inputs.0) and street = \(inputs.1) failed! Expected \(expectedValue) but got \(result)")
        }
    }
    
}
