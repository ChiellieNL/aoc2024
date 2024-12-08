// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import CoreGraphics
import Algorithms

let grid = loadGrid()

// Get a list of all unique frequencies
let frequencies = Set(
    grid
        .filter { $0.value != "." }
        .map { $0.value }
)

/*
 Part 1
 */

var part1 = Set<CGPoint>()
for frequency in frequencies {
    // Get all the points that have the same frequency
    let all = grid.filter { $0.value == frequency }

    // Get all the pairs of points that have the same frequency
    let pairs = all.combinations(ofCount: 2)
    for pair in pairs {
        // Calculate the vector between the two points
        let vector = pair[0].key - pair[1].key

        // Apply the vector and in case it's within the existing grid, add an antinode on that position
        if grid[pair[0].key + vector] != nil {
            part1.insert(pair[0].key + vector)
        }
        if grid[pair[1].key - vector] != nil {
            part1.insert(pair[1].key - vector)
        }
    }
}

print("Total part 1: \(part1.count)")

/*
 Part 2
 */

var part2 = Set<CGPoint>()
for frequency in frequencies {
    // Get all the points that have the same frequency
    let all = grid.filter { $0.value == frequency }

    // Get all the pairs of points that have the same frequency
    let pairs = all.combinations(ofCount: 2)
    for pair in pairs {
        // Calculate the vector between the two points
        let vector = pair[0].key - pair[1].key

        // This time the antenna location itself will become an antinode, as well
        // as all the points in the direction of the vector
        // (as long as they're within the existing grid boundaries)
        var first = pair.first!.key
        while grid[first] != nil {
            part2.insert(first)
            first = first + vector
        }

        var second = pair.last!.key
        while grid[second] != nil {
            part2.insert(second)
            second = second - vector
        }
    }
}

print("Total part 2: \(part2.count)")
