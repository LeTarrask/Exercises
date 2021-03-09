//
//  VowelCount.swift
//  Exercises
//
//  Created by Alex Luna on 19/02/2021.
//

import Foundation

func vowelCount(_ string: String) -> Int {
    string.filter { "aeiou".contains($0)}.count
}

//Return the number (count) of vowels in the given string.
//
//We will consider a, e, i, o, u as vowels for this Kata (but not y).
//
//The input string will only consist of lower case letters and/or spaces.
