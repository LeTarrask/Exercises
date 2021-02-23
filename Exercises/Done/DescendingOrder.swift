//
//  DescendingOrder.swift
//  Exercises
//
//  Created by Alex Luna on 18/02/2021.
//

import Foundation

func descendingOrder(of number: Int) -> Int {
    Int(number.digits.sorted(by: {$0 > $1}).map{String($0)}.joined()) ?? 00
}


//Your task is to make a function that can take any non-negative integer as an argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.
//
//Examples:
//
//Input: 42145 Output: 54421
//
//Input: 145263 Output: 654321
//
//Input: 123456789 Output: 987654321
