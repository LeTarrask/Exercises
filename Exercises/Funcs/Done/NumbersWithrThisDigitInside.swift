//
//  Numbers with this digit inside.swift
//  Exercises
//
//  Created by Alex Luna on 18/02/2021.
//

import Foundation

func numbersWithDigitInside(_ x: Int, _ d: Int) -> [Int] {
    var array = [Int]()
    for i in 1...x {
        if String(i).contains(String(d)) {
            array.append(i)
        }
    }
    if array.count == 0 {
        return [0, 0, 0]
    } else {
        return [array.count, array.reduce(0, +), array.reduce(1, *)]
    }
}



//You have to search all numbers from inclusive 1 to inclusive a given number x, that have the given digit d in it.
//The value of d will always be 0 - 9.
//The value of x will always be greater than 0.
//
//You have to return as an array
//
//the count of these numbers,
//their sum
//and their product.
//
//For example:
//x = 11
//d = 1
//->
//Numbers: 1, 10, 11
//Return: [3, 22, 110]
