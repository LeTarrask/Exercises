//
//  ExercisesTest4.swift
//  ExercisesTests
//
//  Created by Alex Luna on 19/02/2021.
//

import XCTest
@testable import Exercises

class ExercisesTest4: XCTestCase {
    func testPrinterError() throws {
        XCTAssert(printerError("aaabbbbhaijjjm") == "0/14")
        XCTAssert(printerError("aaaxbbbbyyhwawiwjjjwwm") == "8/22")
    }
    
    func testCountBits() throws {
        XCTAssertEqual(5, countBits(1234))
        XCTAssertEqual(1, countBits(4))
        XCTAssertEqual(3, countBits(7))
        XCTAssertEqual(2, countBits(9))
        XCTAssertEqual(2, countBits(10))
    }
    
    func testToJadenCase() {
        let quotes = [
            [
                "most trees are blue",
                "Most Trees Are Blue"
            ],
            [
                "How can mirrors be real if our eyes aren't real",
                "How Can Mirrors Be Real If Our Eyes Aren't Real"
            ],
            [
                "All the rules in this world were made by someone no smarter than you. So make your own.",
                "All The Rules In This World Were Made By Someone No Smarter Than You. So Make Your Own."
            ],
            [
                "School is the tool to brainwash the youth.",
                "School Is The Tool To Brainwash The Youth."
            ],
            [
                "If newborn babies could speak they would be the most intelligent beings on planet Earth.",
                "If Newborn Babies Could Speak They Would Be The Most Intelligent Beings On Planet Earth."
            ],
            [
                "If everybody in the world dropped out of school we would have a much more intelligent society.",
                "If Everybody In The World Dropped Out Of School We Would Have A Much More Intelligent Society."
            ],
            [
                "Trees are never sad look at them every once in awhile they're quite beautiful.",
                "Trees Are Never Sad Look At Them Every Once In Awhile They're Quite Beautiful."
            ],
            [
                "When I die. then you will realize",
                "When I Die. Then You Will Realize"
            ],
            [
                "I should just stop tweeting, the human conciousness must raise before I speak my juvenile philosophy.",
                "I Should Just Stop Tweeting, The Human Conciousness Must Raise Before I Speak My Juvenile Philosophy."
            ],
            [
                "Jonah Hill is a genius",
                "Jonah Hill Is A Genius"
            ],
            [
                "Dying is mainstream",
                "Dying Is Mainstream"
            ],
            [
                "If there is bread winners, there is bread losers. But you can't toast what isn't real.",
                "If There Is Bread Winners, There Is Bread Losers. But You Can't Toast What Isn't Real."
            ],
            [
                "You Can Discover Everything You Need to Know About Everything by Looking at your Hands",
                "You Can Discover Everything You Need To Know About Everything By Looking At Your Hands"
            ],
            [
                "Fixed habits to respond to authority takes 12 years. Have fun",
                "Fixed Habits To Respond To Authority Takes 12 Years. Have Fun"
            ],
            [
                "When you Live your Whole life In a Prison freedom Can be So dull.",
                "When You Live Your Whole Life In A Prison Freedom Can Be So Dull."
            ],
            [
                "Young Jaden: Here's the deal for every time out you give me, you'll give me 15 dollars for therapy when I get older.",
                "Young Jaden: Here's The Deal For Every Time Out You Give Me, You'll Give Me 15 Dollars For Therapy When I Get Older."
            ],
            [
                "The moment that truth is organized it becomes a lie.",
                "The Moment That Truth Is Organized It Becomes A Lie."
            ],
            [
                "Three men, six options, don't choose.",
                "Three Men, Six Options, Don't Choose."
            ],
            [
                "Water in the eyes and alcohol in the eyes are pretty much the same I know This from first Hand Experience.",
                "Water In The Eyes And Alcohol In The Eyes Are Pretty Much The Same I Know This From First Hand Experience."
            ],
            [
                "Pay attention to the numbers in your life they are vastly important.",
                "Pay Attention To The Numbers In Your Life They Are Vastly Important."
            ],
            [
                "We need to stop teaching the Youth about the Past and encourage them to change the Future.",
                "We Need To Stop Teaching The Youth About The Past And Encourage Them To Change The Future."
            ],
            [
                "If a book store never runs out of a certain book, dose that mean that nobody reads it, or everybody reads it",
                "If A Book Store Never Runs Out Of A Certain Book, Dose That Mean That Nobody Reads It, Or Everybody Reads It"
            ],
            [
                "People tell me to smile I tell them the lack of emotion in my face doesn't mean I'm unhappy",
                "People Tell Me To Smile I Tell Them The Lack Of Emotion In My Face Doesn't Mean I'm Unhappy"
            ],
            [
                "I watch Twilight every night",
                "I Watch Twilight Every Night"
            ]
        ]
        for quote in quotes {
            XCTAssertEqual(quote[0].toJadenCase(), quote[1])
        }
    }
    
    func testCountDuplicates() throws {
        XCTAssertEqual(countDuplicates("abcde"), 0)
        XCTAssertEqual(countDuplicates("abcdea"), 1)
        XCTAssertEqual(countDuplicates("indivisibility"), 1)
        XCTAssertEqual(countDuplicates("aA11"), 2)
        XCTAssertEqual(countDuplicates("ABBA"), 2)
        XCTAssertEqual(countDuplicates("Indivisibilities"), 2)
    }
    
    func testSumOfLowest() throws {
        XCTAssertEqual(sumOfTwoSmallestIntegersIn([5, 8, 12, 18, 22]), 13)
        XCTAssertEqual(sumOfTwoSmallestIntegersIn([7, 15, 12, 18, 22]), 19)
        XCTAssertEqual(sumOfTwoSmallestIntegersIn([25, 42, 12, 18, 22]), 30)
        XCTAssertEqual(sumOfTwoSmallestIntegersIn([1, 8, 12, 18, 5]), 6)
        XCTAssertEqual(sumOfTwoSmallestIntegersIn([13, 12, 5, 61, 22]), 17)
    }
    
    func testVowelCount() throws {
        XCTAssertEqual(vowelCount("abracadabra"), 5)
    }
    
    func testDuplicateEncode() throws {
        XCTAssertEqual(duplicateEncode("din"), "(((")
        XCTAssertEqual(duplicateEncode("recede"), "()()()")
        XCTAssertEqual(duplicateEncode("Success"), ")())())", "should ignore case")
        XCTAssertEqual(duplicateEncode("(( @"), "))((")
    }
    
    func testPersistence() throws {
        XCTAssertEqual(persistence(for: 18), 1)
        XCTAssertEqual(persistence(for: 28), 2)
    }
    
    func testTribonacci() throws {
        XCTAssertEqual(tribonacci([1,1,1], 10), [1,1,1,3,5,9,17,31,57,105])
        XCTAssertEqual(tribonacci([0,0,1], 10), [0,0,1,1,2,4,7,13,24,44])
        XCTAssertEqual(tribonacci([0,1,1], 10), [0, 1, 1, 2, 4, 7, 13, 24, 44, 81])
        XCTAssertEqual(tribonacci([1,0,0], 10), [1, 0, 0, 1, 1, 2, 4, 7, 13, 24])
        XCTAssertEqual(tribonacci([0,0,0], 10), [0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
        XCTAssertEqual(tribonacci([1,2,3], 10), [1, 2, 3, 6, 11, 20, 37, 68, 125, 230])
        XCTAssertEqual(tribonacci([3,2,1], 10), [3, 2, 1, 6, 9, 16, 31, 56, 103, 190])
        XCTAssertEqual(tribonacci([1,1,1], 1), [1])
        XCTAssertEqual(tribonacci([300,200,100], 0), [])
    }
    
    func testDigPow() throws {
        XCTAssertEqual(digPow(for: 89, using: 1), 1)
        XCTAssertEqual(digPow(for: 92, using: 1), -1)
        XCTAssertEqual(digPow(for: 46288, using: 3), 51)
    }
}
