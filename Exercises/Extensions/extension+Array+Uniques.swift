//
//  extension+Array+Uniques.swift
//  Exercises
//
//  Created by Alex Luna on 18/02/2021.
//

import Foundation

extension Array where Element: Hashable {
    public var uniques: Array {
        var buffer = Array()
        var added = Set<Element>()
        for elem in self {
            if !added.contains(elem) {
                buffer.append(elem)
                added.insert(elem)
            }
        }
        return buffer
    }
}
