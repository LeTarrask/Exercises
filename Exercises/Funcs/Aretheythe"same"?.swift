//
//  Aretheythe"same"?.swift
//  Exercises
//
//  Created by Alex Luna on 20/02/2021.
//

import Foundation

func comp(_ a: [Int], _ b: [Int]) -> Bool {
    a.map { $0*$0 }.sorted() == b.sorted()
}

//Given two arrays a and b write a function comp(a, b) (orcompSame(a, b)) that checks whether the two arrays have the "same" elements, with the same multiplicities. "Same" means, here, that the elements in b are the elements in a squared, regardless of the order.
//
//Examples
//
//Valid arrays
//
//a = [121, 144, 19, 161, 19, 144, 19, 11]
//b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
//comp(a, b) returns true because in b 121 is the square of 11, 14641 is the square of 121, 20736 the square of 144, 361 the square of 19, 25921 the square of 161, and so on. It gets obvious if we write b's elements in terms of squares:
//
//a = [121, 144, 19, 161, 19, 144, 19, 11]
//b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]
//Invalid arrays
//
//If, for example, we change the first number to something else, comp may not return true anymore:
//
//a = [121, 144, 19, 161, 19, 144, 19, 11]
//b = [132, 14641, 20736, 361, 25921, 361, 20736, 361]
//comp(a,b) returns false because in b 132 is not the square of any number of a.
//
//a = [121, 144, 19, 161, 19, 144, 19, 11]
//b = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]
//comp(a,b) returns false because in b 36100 is not the square of any number of a.
//
//Remarks
//
//a or b might be [] (all languages except R, Shell).
//a or b might be nil or null or None or nothing (except in C++, Elixir, Haskell, PureScript, Pascal, R, Rust, Shell).
//If a or b are nil (or null or None), the problem doesn't make sense so return false.
