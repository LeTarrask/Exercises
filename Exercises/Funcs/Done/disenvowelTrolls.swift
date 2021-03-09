//
//  disenvowelTrolls.swift
//  Exercises
//
//  Created by Alex Luna on 18/02/2021.
//

import Foundation


func disemvowel(_ s: String) -> String {
    s.filter { !"aeiouAEIOU".contains($0) }
}



//Trolls are attacking your comment section!
//
//A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.
//
//Your task is to write a function that takes a string and return a new string with all vowels removed.
//
//For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".
//
//Note: for this kata y isn't considered a vowel.
