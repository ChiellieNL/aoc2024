// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

/*
 Part 1
 */

let rules = OrderRule.rules
let updates = Update.updates

let validUpdates = updates.filter({ $0.conforms(to: rules) })
let total = validUpdates.reduce(0, { $0 + $1.centerPage })

print("Total part 1: \(total)")

/*
 Part 2
 */

var invalidUpdates = updates.filter({ !$0.conforms(to: rules) })
for inx in 0..<invalidUpdates.count {
    invalidUpdates[inx].fixOrdering(conformingTo: rules)
}
let total2 = invalidUpdates.reduce(0, { $0 + $1.centerPage })

print("Total part 2: \(total2)")
