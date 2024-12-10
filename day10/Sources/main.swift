// The Swift Programming Language
// https://docs.swift.org/swift-book


import Foundation

let grid = loadGrid()

let starters = grid
    .filter {
        $0.value == "0"
    }
    .map(\.key)

var part1 = 0
var part2 = 0
for starter in starters {
    var finder = PathFinder(grid: grid, start: starter)
    finder.findRoutes()
    part1 += finder.routes.count
    part2 += finder.routes.reduce(0) { $0 + $1.value }
}

print("Total part 1: \(part1)")
print("Total part 2: \(part2)")
