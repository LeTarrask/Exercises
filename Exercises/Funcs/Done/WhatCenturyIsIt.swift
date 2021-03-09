//
//  WhatCenturyIsIt.swift
//  Exercises
//
//  Created by Alex Luna on 18/02/2021.
//

import Foundation

func whatCenturyIsIt(_ year: String) -> String {
    guard let intYear = Int(year) else { return "" }
    
    var number = Int()
    if intYear % 100 == 0 {
        number = intYear/100
    } else {
        number = (intYear/100)+1
    }

    var suffix = ""
    switch (number % 10, number % 100) {
    case (1, 11):
        suffix = "th"
    case (1, _):
        suffix = "st"
    case (2, 12):
        suffix = "th"
    case (2, _):
        suffix = "nd"
    case (3, 13):
        suffix = "th"
    case (3, _):
        suffix = "rd"
    default:
        suffix = "th"
    }
    
    return String(number)+suffix
}


// solucao linda de outra pessoa:

func whatCentury(_ year: String) -> String {
    return NumberFormatter.localizedString(
      from: NSNumber(value: ceil(Double(year)!/100)),
      number: .ordinal)
}

//Return the century of the input year. The input will always be a 4 digit string, so there is no need for validation.
//
//Examples
//
//"1999" --> "20th"
//"2011" --> "21st"
//"2154" --> "22nd"
//"2259" --> "23rd"
//"1124" --> "12th"
//"2000" --> "20th"
