// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

let locations = inputLocations

let leftSorted = locations.left.sorted()
let rightSorted = locations.right.sorted()

/*
 Part 1
 */
var totalDistance = 0
for inx in 0..<leftSorted.count {
    totalDistance += abs(leftSorted[inx] - rightSorted[inx])
}

print("Total distance: \(totalDistance)")

/*
 Part 2
 */
var totalSimilar = 0
for inx in 0..<leftSorted.count {
    let value = leftSorted[inx]
    totalSimilar += value * (rightSorted.filter({ $0 == value }).count)
}

print("Total similar: \(totalSimilar)")
