//
//  ExercisesTest3.swift
//  ExercisesTests
//
//  Created by Alex Luna on 19/02/2021.
//

import XCTest
@testable import Exercises

class ExercisesTests3: XCTestCase {
    func testWhatCentury() throws {
        XCTAssertEqual("20th", whatCenturyIsIt("1999"), "With input '1999' solution produced wrong output.")
        XCTAssertEqual("21st", whatCenturyIsIt("2011"), "With input '2011' solution produced wrong output.")
        XCTAssertEqual("22nd", whatCenturyIsIt("2154"), "With input '2154' solution produced wrong output.")
        XCTAssertEqual("23rd", whatCenturyIsIt("2259"), "With input '2259' solution produced wrong output.")
    }
    
    func testEvenOrOdd() throws {
        XCTAssertEqual(evenOrOdd(2),"Even")
        XCTAssertEqual(evenOrOdd(0),"Even")
        XCTAssertEqual(evenOrOdd(7),"Odd")
        XCTAssertEqual(evenOrOdd(1),"Odd")
    }
    
    func testDisenvowelTrolls() throws {
        XCTAssertEqual("Ths wbst s fr lsrs LL!", disemvowel("This website is for losers LOL!"))
        XCTAssertEqual("N ffns bt,\nYr wrtng s mng th wrst 'v vr rd", disemvowel("No offense but,\nYour writing is among the worst I've ever read"))
        XCTAssertEqual("Wht r y,  cmmnst?", disemvowel("What are you, a communist?"))
    }
    
    func testDigitalRoot() throws {
        XCTAssertEqual(digitalRoot(of: 16), 7);
        XCTAssertEqual(digitalRoot(of: 456), 6);
    }
    
    func testSpinWords() throws {
        let testCases = [
            ("Welcome", "emocleW"),
            ("to", "to"),
            ("CodeWars", "sraWedoC"),
        ]
        testCases.forEach {
            XCTAssertEqual(spinWords(in: $0.0), $0.1)
        }
        let testCases1 = [
            ("Hey fellow warriors", "Hey wollef sroirraw"),
            ("This sentence is a sentence", "This ecnetnes is a ecnetnes"),
        ]
        testCases1.forEach {
            XCTAssertEqual(spinWords(in: $0.0), $0.1)
        }
    }
    
    func testMumbling() throws {
        XCTAssertEqual(accum("abcd"), "A-Bb-Ccc-Dddd")
        XCTAssertEqual(accum("RqaEzty"), "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy")
        XCTAssertEqual(accum("cwAt"), "C-Ww-Aaa-Tttt")
    }
    
    func testDescendingOrder() throws {
        XCTAssertEqual(descendingOrder(of: 0), 0)
        XCTAssertEqual(descendingOrder(of: 15), 51)
        XCTAssertEqual(descendingOrder(of: 123456789), 987654321)
    }
    
    func testShortestWord() throws {
        XCTAssertEqual(3, find_short("bitcoin take over the world maybe who knows perhaps"))
        XCTAssertEqual(3, find_short("lets talk about javascript the best language"))
        XCTAssertEqual(1, find_short("i want to travel the world writing code one day"))
        XCTAssertEqual(2, find_short("Lets all go on holiday somewhere very cold"))
    }
    
    func testStringRepeat() throws {
        XCTAssertEqual(repeatStr(5, "Hello"), "HelloHelloHelloHelloHello")
        XCTAssertEqual(repeatStr(6, "I"), "IIIIII")
    }
}
