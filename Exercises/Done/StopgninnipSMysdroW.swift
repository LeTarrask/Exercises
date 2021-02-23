//
//  StopgninnipSMysdroW.swift
//  Exercises
//
//  Created by Alex Luna on 18/02/2021.
//

import Foundation

func spinWords(in sentence: String) -> String {
    let words = sentence.split(separator: " ")
    var resultSentence = [String]()
    for word in words {
        if word.count >= 5 {
            resultSentence.append(String(word.reversed()))
        } else {
            resultSentence.append(String(word))
        }
    }
    return resultSentence.joined(separator: " ")
}

// solucao alheia delícia
func spinWordsCool(in sentence: String) -> String {
    sentence
        .split(separator: " ")
        .map { "\($0)" }
        .map { $0.count > 4 ? String($0.reversed()) : $0 }
        .joined(separator: " ")
}

//Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.
//
//Examples:
//
//spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"
//
//spinWords( "This is a test") => returns "This is a test"
//
//spinWords( "This is another test" )=> returns "This is rehtona test"
