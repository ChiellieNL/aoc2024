//
//  Grid.swift
//  day6
//
//  Created by Michiel Horvers on 06/12/2024.
//

import Foundation
import CoreGraphics

// MARK - Grid

typealias Grid = [CGPoint : Character]

// MARK: - Loading

func loadGrid() -> Grid {
    var grid = Grid()

    let lines = rawInput.components(separatedBy: .newlines)
    for y in 0..<lines.count {
        for x in 0..<lines[y].count {
            grid[CGPoint(x: x, y: y)] = lines[y][x]
        }
    }

    return grid
}

// MARK: - Helpers

extension Grid {
    var maxX: CGFloat {
        self.keys.map(\.x).max()!
    }

    var maxY: CGFloat {
        self.keys.map(\.y).max()!
    }

    func isInGrid(_ point: CGPoint) -> Bool {
        self.keys.contains(point)
    }

    var startPoint: CGPoint {
        self.first(where: { $0.value == "^" })!.key
    }
}

// MARK: - Part 2

extension Grid {
    var isLooping: Bool {
        var direction: Direction = .up
        var position = self.startPoint
        var visited: [CGPoint: Direction] = [position: .up]

        position = direction.nextPoint(for: position)
        while let char = self[position] {
            if visited[position] == direction {
                // already been here with this direction
                // so we're looping
                return true
            }

            if char == "#" {
                // Revert to the previous position and change direction
                position = direction.previousPoint(for: position)
                direction = direction.nextDirection
            } else {
                visited[position] = direction
            }

            position = direction.nextPoint(for: position)
        }

        // Left the grid, so no looping
        return false
    }
}

// MARK: - Dump the grid for testing

extension Grid {
    func dump() {
        for y in 0...Int(maxY) {
            var line = ""
            for x in 0...Int(maxX) {
                let point = CGPoint(x: x, y: y)
                line += self[point].map({ String($0) }) ?? " "
            }
            print(line)
        }
    }
}
