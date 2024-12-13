// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import Utils

let machines = Machine.import(from: rawInput)

print("Part 1: \(machines.reduce(0) { $0 + $1.tokens(isPart2: false) })")
print("Part 2: \(machines.reduce(0) { $0 + $1.tokens(isPart2: true) })")
