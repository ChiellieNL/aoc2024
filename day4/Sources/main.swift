// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

/*
 Part 1
 */

let grid = loadGrid()
let maxX = grid.maxX
let maxY = grid.maxY

var total = 0
for y in 0...Int(maxY) {
    for x in 0...Int(maxX) {
        let point = CGPoint(x: CGFloat(x), y: CGFloat(y))
        total += grid.xmasCount(at: point)
    }
}

print("Total Xmasses: \(total)")

/*
 Part 2
 */

total = 0
for y in 0...Int(maxY) {
    for x in 0...Int(maxX) {
        let point = CGPoint(x: CGFloat(x), y: CGFloat(y))
        if grid.hasMas(at: point) {
            total += 1
        }
    }
}

print("Total X-MASses: \(total)")
