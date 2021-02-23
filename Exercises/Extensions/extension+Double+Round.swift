//
//  extension+Double+Round.swift
//  Exercises
//
//  Created by Alex Luna on 18/02/2021.
//

import Foundation

extension Double {
    public func round(to places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
