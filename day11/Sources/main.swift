// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

/*
 Part 1
 */
var stones = Stones(input: rawInput)
stones.evolve(times: 25)
print("Total part 1: \(stones.total)")

/*
 Part 2
 */

stones = Stones(input: rawInput)
stones.evolve(times: 75)
print("Total part 2: \(stones.total)")

