//
//  GrowthOfPopulation.swift
//  Exercises
//
//  Created by Alex Luna on 18/02/2021.
//

import Foundation

func calculateGrowth(_ initialPop: Int, _ percentGrowth: Double, _ aug: Int, _ target: Int) -> Int {
    var year = 0
    var currentPop = initialPop
    
    while currentPop < target {
        currentPop = Int(Double(currentPop) * percentGrowth) + aug
        year += 1
    }
    
    return year
}
