//
//  FindOutlier.swift
//  Codewars
//
//  Created by Alex Luna on 18/02/2021.
//

import Foundation

func findOutlier(_ array: [Int]) -> Int {
    // test tava dando bug nesse que era o meu código
  let isEven = array.filter{ $0 % 2 == 0 }
  let isOdd = array.filter{ $0 % 2 == 1}
  
  return isEven.count < isOdd.count ? isEven[0] : isOdd[0]
}

func findOutlier2(_ array: [Int]) -> Int {
    // codigo de alguém. é mais rápido porque só faz um filtro
    let odd = array.filter{$0 % 2 != 0}
    return odd.count > 1 ? array.filter{$0 % 2 == 0}[0] : odd[0]
}


func findOutlier3(_ array: [Int]) -> Int {
    // codigo ganhador do codewars, o único que passa no tempo certo
    return array.first(where: array[0...2].map{ $0 & 1 }.reduce(0, +) > 1 ? { $0 & 1 == 0 } : { $0 & 1 == 1 })!
}
