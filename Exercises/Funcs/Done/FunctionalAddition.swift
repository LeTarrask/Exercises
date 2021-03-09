//
//  FunctionalAddition.swift
//  Exercises
//
//  Created by Alex Luna on 18/02/2021.
//

import Foundation

func functionalAdd(_ n: Int) -> ((Int) -> Int) {
  return { y in n + y }
}

//Create a function add(n)/Add(n) which returns a function that always adds n to any number
//
//Note for Java: the return type and methods have not been provided to make it a bit more challenging.
//
//addOne = add(1)
//addOne(3) // 4
