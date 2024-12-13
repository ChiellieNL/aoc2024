// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import Utils

let machines = Machine.import(from: rawInput)

print("Part 1: \(machines.reduce(0) { $0 + $1.tokens(isPart2: false) })")

/* *
//print("Part 2: \(machines.reduce(0) { $0 + $1.tokens(isPart2: true) })")
var total = 0
for inx in 0..<machines.count {
    print("Checking machine \(inx) out of \(machines.count)... (current total: \(total))")
    total += machines[inx].tokens(isPart2: true)
}
print("Part 2: \(total)")
// */
