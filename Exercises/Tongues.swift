//
//  Tongues.swift
//  Exercises
//
//  Created by Alex Luna on 19/02/2021.
//

import Foundation


func tongues(_ code: String) -> String {
    let consonants = ["b", "k", "x", "z", "n", "h", "d", "c", "w", "g", "p", "v", "j", "q", "t", "s", "r", "l", "m", "f"]
    let vowels = ["a", "i", "y", "e", "o", "u"]

    func replaceCharacter(c: Character) -> Character {
        var character = String(c)
        var isUppercase = false
        var index = 0
        
        if c.isUppercase {
            isUppercase = true
            character = character.lowercased()
        }
     
        if vowels.contains(character) {
            index = vowels.firstIndex(of: character) ?? 00
            index = index + 3
            if index > 5 {
                index = index - 6
            }
            character = vowels[index]
        } else {
            index = consonants.firstIndex(of: character) ?? 00
            index = index + 10
            if index > 19 {
                index = index - 20
            }
            character = consonants[index]
        }
        
        if isUppercase {
            character = character.uppercased()
        }
        
        return Character(character)
    }
    
    return String(code.map { $0.isLetter ? replaceCharacter(c: $0) : $0 })
}




//Gandalf"s writings have long been available for study, but no one has yet figured out what language they are written in. Recently, due to programming work by a hacker known only by the code name ROT13, it has been discovered that Gandalf used nothing but a simple letter substitution scheme, and further, that it is its own inverse|the same operation scrambles the message as unscrambles it.
//
//This operation is performed by replacing vowels in the sequence "a" "i" "y" "e" "o" "u" with the vowel three advanced, cyclicly, while preserving case (i.e., lower or upper).
//
//Similarly, consonants are replaced from the sequence "b" "k" "x" "z" "n" "h" "d" "c" "w" "g" "p" "v" "j" "q" "t" "s" "r" "l" "m" "f" by advancing ten letters.
//
//So for instance the phrase "One ring to rule them all." translates to "Ita dotf ni dyca nsaw ecc."
//
//The fascinating thing about this transformation is that the resulting language yields pronounceable words. For this problem, you will write code to translate Gandalf"s manuscripts into plain text.
//
//Your job is to write a function that decodes Gandalf"s writings.
//
//Input
//
//The function will be passed a string for the function to decode. Each string will contain up to 100 characters, representing some text written by Gandalf. All characters will be plain ASCII, in the range space (32) to tilde (126).
//
//Output
//
//For each string passed to the decode function return its translation.
