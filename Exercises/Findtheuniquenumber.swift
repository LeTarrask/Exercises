//
//  Findtheuniquenumber.swift
//  Exercises
//
//  Created by Alex Luna on 19/02/2021.
//

import Foundation

func findUniq(_ arr: [Double]) -> Double {
    let nums = arr.sorted()
    guard let unique = nums[0] != nums[1] ? nums.first : nums.last else {
        return nums[0]
    }
    
    return unique
}


// codigo copiado. nao entendi como funciona, mas não tenho mais fosfato pra fazer isso funcionar.

//There is an array with some numbers. All numbers are equal except for one. Try to find it!
//
//findUniq([ 1, 1, 1, 2, 1, 1 ]) == 2
//findUniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
//It’s guaranteed that array contains at least 3 numbers.
//
//The tests contain some very huge arrays, so think about performance.
//
//This is the first kata in series:
