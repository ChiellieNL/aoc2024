// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import Utils

let grid = Grid(from: rawInput)
let regions = Region.map(grid)

let total1 = regions.reduce(0) { $0 + ($1.area * $1.perimeter) }
print("Part 1: \(total1)")


let total2 = regions.reduce(0) { $0 + ($1.area * $1.sides) }
print("Part 2: \(total2)")

/* *
print("\n")
for region in regions {
    region.dump()
}
// */

/*
 Part 1: 1370258
 Part 2: 805814

 */
