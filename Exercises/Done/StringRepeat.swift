//
//  StringRepeat.swift
//  Exercises
//
//  Created by Alex Luna on 18/02/2021.
//

import Foundation

func repeatStr(_ n: Int, _ string: String) -> String {
    String(repeating: string, count: n)
}

//Write a function called repeat_str which repeats the given string src exactly count times.
//
//repeatStr(6, "I") // "IIIIII"
//repeatStr(5, "Hello") // "HelloHelloHelloHelloHello"
