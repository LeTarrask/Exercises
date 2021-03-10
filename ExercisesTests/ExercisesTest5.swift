//
//  ExercisesTest5.swift
//  ExercisesTests
//
//  Created by Alex Luna on 19/02/2021.
//

import XCTest
@testable import Exercises


class ExercisesTest5: XCTestCase {
    func testFindUniq() throws {
        XCTAssertEqual(findUniq([ 1, 1, 1, 2, 1, 1 ]), 2)
        XCTAssertEqual(findUniq([ 0, 0, 0.55, 0, 0 ]), 0.55)
        XCTAssertEqual(findUniq([ 3, 10, 3, 3, 3 ]), 10)
    }
    
    func testTongues() throws {
        XCTAssertEqual(tongues("Ita dotf ni dyca nsaw ecc."), "One ring to rule them all.")
        XCTAssertEqual(tongues("Tim oh nsa nowa gid ecc fiir wat ni liwa ni nsa eor ig nsaod liytndu."), "Now is the time for all good men to come to the aid of their country.")
        XCTAssertEqual(tongues("Giydhlida etr hakat uaedh efi iyd gidagensadh pdiyfsn ytni nsoh"), "Fourscore and seven years ago our forefathers brought unto this")
        XCTAssertEqual(tongues("litnotatn e tam tenoit."), "continent a new nation.")
        XCTAssertEqual(tongues("Nsa zyolv pdimt gij xywbar ikad nsa cequ rifh."), "The quick brown fox jumped over the lazy dogs.")
    }
    
    func testComp() throws {
        var a1 = [121, 144, 19, 161, 19, 144, 19, 11];
        var a2 = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19];
        XCTAssertTrue(comp(a1, a2) == true, "should return \(true)")
        a1 = [121, 144, 19, 161, 19, 144, 19, 11];
        a2 = [11*21, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19];
        XCTAssertTrue(comp(a1, a2) == false, "should return \(false)")
        a1 = [-10, -9, -7, -5, -5, -4, -3, -3]
        a2 = [9, 9, 16, 25, 25, 49, 81, 100]
        XCTAssertTrue(comp(a1, a2) == true, "should return \(true)")
        a1 = [-161, -144, -144, -121, -11, 19, 19, 19]
        a2 = [121, 361, 361, 361, 14641, 20736, 20736, 25921]
        XCTAssertTrue(comp(a1, a2) == true, "should return \(true)")
    }
    
    func testFindMissingLetter() throws {
        XCTAssertEqual(findMissingLetter(["a","b","c","d","f"]), "e")
        XCTAssertEqual(findMissingLetter(["O","Q","R","S"]), "P")
    }
    
    func testListSquared() throws {
        func testing(_ m: Int, _ n: Int, _ expected: [(Int, Int)]) {
            let ans  = listSquared(m, n)
            if ans.count == expected.count {
                for i in 0..<expected.count {
                    XCTAssertTrue(ans[i] == expected[i], "Actual and Expected don't have same value at index \(i) -> expected \(expected[i])")
                }
            }
            else {XCTAssertEqual(ans.count, expected.count, "Actual and Expected don't have same length")}
        }
        
        func testExample() {
            testing(1, 250, [(1, 1), (42, 2500), (246, 84100)])
            testing(1, 250, [(1, 1), (42, 2500), (246, 84100)])
            testing(42, 250, [(42, 2500), (246, 84100)])
            testing(250, 500, [(287, 84100)])
            testing(300, 600, [])
        }
    }
}
