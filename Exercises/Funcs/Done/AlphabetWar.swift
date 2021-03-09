//
//  AlphabetWar.swift
//  Exercises
//
//  Created by Alex Luna on 18/02/2021.
//

import Foundation

func alphabetWar(fighters: String) -> String {
    let a_values: [String: Int] = ["m": 4, "q": 3, "d": 2, "z": 1]
    let b_values: [String: Int] = ["w": 4, "p": 3, "b": 2, "s": 1]
    
    var a = 0
    var b = 0
    
    for letter in fighters {
        if (a_values[letter.lowercased()] != nil) {
            a += a_values[letter.lowercased()]!
        }
        
        if (b_values[letter.lowercased()] != nil) {
            b += b_values[letter.lowercased()]!
        }
    }
    
    switch a {
    case _ where a > b:
        return "Right side wins!"
    case _ where b > a:
        return "Left side wins!"
    default:
        return "Let's fight again!"
    }
}


//Introduction
//
//There is a war and nobody knows - the alphabet war!
//There are two groups of hostile letters. The tension between left side letters and right side letters was too high and the war began.
//
//Task
//
//Write a function that accepts fight string consists of only small letters and return who wins the fight. When the left side wins return Left side wins!, when the right side wins return Right side wins!, in other case return Let's fight again!.
//
//The left side letters and their power:
//
// w - 4
// p - 3
// b - 2
// s - 1
//The right side letters and their power:
//
// m - 4
// q - 3
// d - 2
// z - 1
//The other letters don't have power and are only victims.
//
//Example
//
//AlphabetWar("z");        //=> Right side wins!
//AlphabetWar("zdqmwpbs"); //=> Let's fight again!
//AlphabetWar("zzzzs");    //=> Right side wins!
//AlphabetWar("wwwwwwz");  //=> Left side wins!
