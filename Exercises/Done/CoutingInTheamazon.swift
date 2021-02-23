//
//  CoutingInTheamazon.swift
//  Exercises
//
//  Created by Alex Luna on 18/02/2021.
//

import Foundation

func countArare(_ n: Int) -> String {
    let output = String(repeating: "adak ", count: n / 2 ).dropLast()
    if n % 2 == 0 {
        return String(output)
    } else if output.count > 0 {
        return output + " anane"
    } else {
        return "anane"
    }
}

// this is code I copied
func countArareBestPractice(_ n: Int) -> String {
    guard n > 0 else {return ""}
    var pairs = Array(repeating: "adak", count: n/2)
    if n % 2 == 1 {pairs.append("anane")}
    return pairs.joined(separator: " ")
}

//The Arara are an isolated tribe found in the Amazon who count in pairs. For example one to eight is as follows:
//
//1 = anane
//2 = adak
//3 = adak anane
//4 = adak adak
//5 = adak adak anane
//6 = adak adak adak
//7 = adak adak adak anane
//8 = adak adak adak adak
//
//Take a given number and return the Arara's equivalent.
//
//e.g.
//
//countArara(3) // "adak anane"
//
//countArara(8) // "adak adak adak adak"
