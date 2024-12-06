// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

/*
 Part 1
 */

var grid = loadGrid()
let maxX = grid.maxX
let maxY = grid.maxY
var direction: Direction = .up
var position = grid.startPoint

grid[position] = "X"

// Start the patrol
position = direction.nextPoint(for: position)
while let char = grid[position] {
    if char == "#" {
        // Revert to the previous position and change direction
        position = direction.previousPoint(for: position)
        direction = direction.nextDirection
    } else {
        grid[position] = "X"
    }
    
    position = direction.nextPoint(for: position)
}

print("Total part 1: \(grid.filter { $0.value == "X" }.count)")
//print("Route:\n\(grid.dump())")

/*
 Part 2
 */

grid = loadGrid()
var total = 0

// Add a barrier at each grid location and check if we're looping
for y in 0...Int(maxY) {
    for x in 0...Int(maxX) {
        let point = CGPoint(x: x, y: y)
        if grid[point] == "." {
            grid[point] = "#"
            if grid.isLooping {
                total += 1
            }
            grid[point] = "."
        }
    }
}

print("Total part 2: \(total)")

