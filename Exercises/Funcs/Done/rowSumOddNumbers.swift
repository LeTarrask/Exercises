//
//  rowSumOddNumbers.swift
//  Exercises
//
//  Created by Alex Luna on 18/02/2021.
//

import Foundation

func rowSumOddNumbers(_ row: Int) -> Int {
    var pyramid = [[Int]]()
    
    var odd = 1
    for i in 1...row {
        var line = [Int]()
        for _ in 1...i {
            line.append(odd)
            odd += 2
        }
        pyramid.append(line)
    }
    return pyramid[row-1].reduce(0, +)
}



//            1
//          3     5
//       7     9    11
//   13    15    17    19
//21    23    25    27    29
//...
//Calculate the row sums of this triangle from the row index (starting at index 1) e.g.:
//
//rowSumOddNumbers(1) // 1
//rowSumOddNumbers(2) // 3 + 5 = 8
