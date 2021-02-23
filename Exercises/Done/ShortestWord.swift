//
//  ShortestWord.swift
//  Exercises
//
//  Created by Alex Luna on 18/02/2021.
//

import Foundation

func find_short(_ str: String) -> Int {
    String(str.split(separator: " ").min(by: { $0.count < $1.count }) ?? "").count
}

//Simple, given a string of words, return the length of the shortest word(s).
//
//String will never be empty and you do not need to account for different data types.
