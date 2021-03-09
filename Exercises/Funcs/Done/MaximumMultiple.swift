//
//  MaximumMultiple.swift
//  Exercises
//
//  Created by Alex Luna on 18/02/2021.
//

import Foundation

func maxMultiple(_ d: Int, _ b: Int) -> Int {
    var value = d
    var maximum = value
    while value <= b {
        if value % d == 0 {
            maximum = value
        }
        value += 1
    }
    return maximum
}




//Task
//
//Given a Divisor and a Bound , Find the largest integer N , Such That ,
//
//Conditions :
//
//N is divisible by divisor
//
//N is less than or equal to bound
//
//N is greater than 0.
//
//Notes
//
//The parameters (divisor, bound) passed to the function are only positive values .
//It's guaranteed that a divisor is Found .
//Input >> Output Examples
//
//maxMultiple (2,7) ==> return (6)
//Explanation:
//
//(6) is divisible by (2) , (6) is less than or equal to bound (7) , and (6) is > 0 .
