//
//  Integers-RecreationOne.swift
//  Exercises
//
//  Created by Alex Luna on 20/02/2021.
//

import Foundation

// otimizei a matemática, calculando só a metade de cada array (obviamente), mas mesmo assim não passa. o if for da solucao abaixo é mais rápido
func listSquared(_ m: Int, _ n: Int) -> [(Int, Int)] {
    var array = [(Int, Int)]()
    for index in m...n {
        var total = index*index
        if index > 1 {
            let divisors = Array(1...index/2).filter{ index % $0 == 0 }
            total += divisors.map{$0*$0}.reduce(0, +)
        }
        if Double(total).squareRoot().truncatingRemainder(dividingBy: 1) == 0 {
            array.append((index, Int(total)))
        }

    }
    return array
}

// esse código funciona
func listSquared4(_ m: Int, _ n: Int) -> [(Int, Int)] {
    var resultArray = [(Int, Int)]()
    for index in m...n {
        var total = index*index
        if index > 1 {
            for divisor in 1...index/2 {
                if index%divisor == 0 {
                    total += (divisor*divisor)
                }
            }
        }
        if Double(total).squareRoot() == Double(Int(Double(total).squareRoot())) {
            resultArray.append((index, total))
        }
    }
    return resultArray
}


// funciona mas é lento
func listSquared3(_ m: Int, _ n: Int) -> [(Int, Int)] {
    var array = [(Int, Int)]()
    
    for i in m...n {
        let divisors = Array(1...i).filter{ i % $0 == 0 }
        let sum = divisors.map{$0*$0}.reduce(0, +)
        let sqr = Double(sum).squareRoot()
        
        if sqr.truncatingRemainder(dividingBy: 1) == 0 {
            array.append((i, Int(sum)))
        }
    }
    return array
}


// Solution for finding if number is perfect square, which is not fast enough anyway
func listSquared2(_ m: Int, _ n: Int) -> [(Int, Int)] {
    var array = [(Int, Int)]()
    
    for i in m...n {
        let divisors = Array(1...i).filter{ i % $0 == 0 }
        let sum = divisors.map{$0*$0}.reduce(0, +)
        
        if sum.isPerfectSquare {
            array.append((i, Int(sum)))
        }

    }
    return array
}

extension BinaryInteger {
    var isPerfectSquare: Bool {
        guard self >= .zero else { return false }
        var sum: Self = .zero
        var count: Self = .zero
        var squareRoot: Self = .zero
        while sum < self {
            count += 2
            sum += count
            squareRoot += 1
        }
        return squareRoot * squareRoot == self
    }
}



//Divisors of 42 are : 1, 2, 3, 6, 7, 14, 21, 42. These divisors squared are: 1, 4, 9, 36, 49, 196, 441, 1764. The sum of the squared divisors is 2500 which is 50 * 50, a square!
//
//Given two integers m, n (1 <= m <= n) we want to find all integers between m and n whose sum of squared divisors is itself a square. 42 is such a number.
//
//The result will be an array of arrays or of tuples (in C an array of Pair) or a string, each subarray having two elements, first the number whose squared divisors is a square and then the sum of the squared divisors.
//
//Examples:
//
//list_squared(1, 250) --> [[1, 1], [42, 2500], [246, 84100]]
//list_squared(42, 250) --> [[42, 2500], [246, 84100]]
//The form of the examples may change according to the language, see Example Tests: for more details.
