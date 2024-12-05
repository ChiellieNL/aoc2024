//
//  OrderRule.swift
//  day5
//
//  Created by Michiel Horvers on 05/12/2024.
//

import Foundation

struct OrderRule {
    let leftSide: Int
    let rightSide: Int
}

extension OrderRule {
    static var rules: [OrderRule] {
        var rules = [OrderRule]()

        let lines = rawOrderInput.components(separatedBy: .newlines)
        for line in lines {
            let components = line.components(separatedBy: "|")
            if let left = Int(components[0]), let right = Int(components[1]) {
                rules.append(OrderRule(leftSide: left, rightSide: right))
            }
        }

        return rules
    }
}
