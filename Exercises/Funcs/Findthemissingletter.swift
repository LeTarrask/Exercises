//
//  Findthemissingletter.swift
//  Exercises
//
//  Created by Alex Luna on 20/02/2021.
//

import Foundation


func findMissingLetter(_ chArr: [Character]) -> Character {
    var startCode = chArr[0].asciiValue!
    for c in chArr {
        if c.asciiValue == startCode {
            startCode += 1
        } else {
            let target = c.asciiValue! - 1
            return Character(UnicodeScalar(target))
        }
    }
    
    return "c"
}


//#Find the missing letter
//
//Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.
//
//You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
//The array will always contain letters in only one case.
//
//Example:
//
//["a","b","c","d","f"] -> "e"
//["O","Q","R","S"] -> "P"
//(Use the English alphabet with 26 letters!)
