//
//  SquareEveryDigit.swift
//  Exercises
//
//  Created by Alex Luna on 18/02/2021.
//

import Foundation

func squareDigits(_ num: Int) -> Int {
    let squares = num.digits.map{$0*$0}
    var string = String()
    for square in squares {
        string += String(square)
    }
    return Int(string) ?? 0
}





//Welcome. In this kata, you are asked to square every digit of a number and concatenate them.
//
//For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.
//
//Note: The function accepts an integer and returns an integer
