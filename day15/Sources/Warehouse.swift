//
//  Warehouse.swift
//  day15
//
//  Created by Michiel Horvers on 15/12/2024.
//

import Foundation
import Utils

struct Warehouse {
    enum Block: Character, GridContent {
        case wall = "#"
        case box = "O"
        case robot = "@"
        case empty = "."

        init(character: Character) {
            self = Self(rawValue: character) ?? .empty
        }

        var stringValue: String {
            String(self.rawValue)
        }
    }

    var grid: Grid<Block>

    init(input: String) {
        grid = Grid(from: input)
    }

    mutating func processMoves(_ moves: [Direction]) {
        for move in moves {
            processMove(direction: move)
        }
    }

    mutating func processMove(direction: Direction) {
        let robot = grid.first(.robot)!

        let nextPoint = robot.move(direction)

        if grid[nextPoint] == .wall {
            return
        }

        if grid[nextPoint] == .empty {
            grid[robot] = .empty
            grid[nextPoint] = .robot
            return
        }

        var target = nextPoint
        while grid[target] == .box {
            target = target.move(direction)
        }

        if grid[target] == .wall {
            return
        }

        while target != nextPoint {
            grid[target] = .box
            target = target.move(direction.opposite)
        }

        grid[nextPoint] = .robot
        grid[robot] = .empty
    }

    func print() {
        grid.print()
    }

    func sumOfBoxes() -> Int {
        let boxes = grid.grid.filter { $0.value == .box }
        return boxes.reduce(0) { $0 + ($1.key.x + ($1.key.y * 100)) }
    }
}
