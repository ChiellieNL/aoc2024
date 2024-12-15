// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import Utils

var warehouse = Warehouse(input: normalInput)
let moves = Direction.movement(from: normalMoveInput)

warehouse.processMoves(moves)
print("Part 1: \(warehouse.sumOfBoxes())")

