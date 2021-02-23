//
//  Mumbling.swift
//  Exercises
//
//  Created by Alex Luna on 18/02/2021.
//

import Foundation

func accum(_ s: String) -> String {
    Array(s)
        .enumerated()
        .map { (number, letter) in
            return letter.uppercased() + String(repeating: letter.lowercased(), count: number)
        }
        .joined(separator: "-")
}



//This time no story, no theory. The examples below show you how to write function accum:
//
//Examples:
//
//accum("abcd") -> "A-Bb-Ccc-Dddd"
//accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
//accum("cwAt") -> "C-Ww-Aaa-Tttt"
//The parameter of accum is a string which includes only letters from a..z and A..Z.
