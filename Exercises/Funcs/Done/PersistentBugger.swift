//
//  PersistentBugger.swift
//  Exercises
//
//  Created by Alex Luna on 19/02/2021.
//

import Foundation

func persistence(for num: Int) -> Int {
    var counter = 0
    var multiplier = num
    
    while multiplier.digits.count > 1 {
        counter += 1
        multiplier = multiplier.digits.reduce(1, *)
    }
    return counter
}



//Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.
//
//For example:
//
// persistence(for: 39) === 3 // because 3*9 = 27, 2*7 = 14, 1*4=4
//                       // and 4 has only one digit
//
// persistence(for: 999) === 4 // because 9*9*9 = 729, 7*2*9 = 126,
//                        // 1*2*6 = 12, and finally 1*2 = 2
//
// persistence(for: 4) === 0 // because 4 is already a one-digit number
