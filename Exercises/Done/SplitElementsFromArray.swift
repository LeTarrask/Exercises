//
//  SplitElementsFromArray.swift
//  Exercises
//
//  Created by Alex Luna on 18/02/2021.
//

import Foundation

func splitElementsFromArray(_ arr: [Int]) -> [Int] {
    let uniqueArr = arr.uniques
    return uniqueArr.filter { $0 % 2 == 0 }.sorted(by: <) + uniqueArr.filter { $0 % 2 != 0 }.sorted(by: >)
}


