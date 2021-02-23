//
//  FindMultiples.swift
//  Codewars
//
//  Created by Alex Luna on 18/02/2021.
//

import Foundation

func multiplyMultiples(_ num: Int) -> Int {
    let array = Array(3..<num)
        .filter { $0 % 3 == 0 || $0 % 5 == 0 }
    return array
        .reduce(0, +)
}


