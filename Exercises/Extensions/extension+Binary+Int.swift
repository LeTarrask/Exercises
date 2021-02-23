//
//  extension+Binary+Int.swift
//  Exercises
//
//  Created by Alex Luna on 18/02/2021.
//

import Foundation

extension BinaryInteger {
    public var digits: [Int] {
        return String(describing: self).compactMap { Int(String($0)) }
    }
}
