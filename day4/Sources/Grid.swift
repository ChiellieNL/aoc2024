//
//  Grid.swift
//  day4
//
//  Created by Michiel Horvers on 04/12/2024.
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
    private func string(with points: [CGPoint]) -> String? {
        var string = ""

        for point in points {
            guard let character = self[point] else { return nil }
            string.append(character)
        }

        return string
    }

    var maxX: CGFloat {
        self.keys.map(\.x).max()!
    }

    var maxY: CGFloat {
        self.keys.map(\.y).max()!
    }
}

// MARK: - Xmas (part 1)

extension Grid {
    func xmasCount(at point: CGPoint) -> Int {
        var count = 0

        guard self[point] == "X" else { return 0 }

        // Check forward
        var points: [CGPoint] = [point]
        for i in 1...3 {
            points.append(CGPoint(x: point.x + CGFloat(i), y: point.y))
        }
        if self.string(with: points) == "XMAS" {
            count += 1
        }

        // Check backward
        points = [point]
        for i in 1...3 {
            points.append(CGPoint(x: point.x - CGFloat(i), y: point.y))
        }
        if self.string(with: points) == "XMAS" {
            count += 1
        }

        // Check down
        points = [point]
        for i in 1...3 {
            points.append(CGPoint(x: point.x, y: point.y + CGFloat(i)))
        }
        if self.string(with: points) == "XMAS" {
            count += 1
        }

        // Check up
        points = [point]
        for i in 1...3 {
            points.append(CGPoint(x: point.x, y: point.y - CGFloat(i)))
        }
        if self.string(with: points) == "XMAS" {
            count += 1
        }

        // Check diagonal down-right
        points = [point]
        for i in 1...3 {
            points.append(CGPoint(x: point.x + CGFloat(i), y: point.y + CGFloat(i)))
        }
        if self.string(with: points) == "XMAS" {
            count += 1
        }

        // Check diagonal down-left
        points = [point]
        for i in 1...3 {
            points.append(CGPoint(x: point.x - CGFloat(i), y: point.y + CGFloat(i)))
        }
        if self.string(with: points) == "XMAS" {
            count += 1
        }

        // Check diagonal up-right
        points = [point]
        for i in 1...3 {
            points.append(CGPoint(x: point.x + CGFloat(i), y: point.y - CGFloat(i)))
        }
        if self.string(with: points) == "XMAS" {
            count += 1
        }

        // Check diagonal up-left
        points = [point]
        for i in 1...3 {
            points.append(CGPoint(x: point.x - CGFloat(i), y: point.y - CGFloat(i)))
        }
        if self.string(with: points) == "XMAS" {
            count += 1
        }

        return count
    }
}

// MARK: - MAS (part 2)

extension Grid {
    func hasMas(at point: CGPoint) -> Bool {
        guard self[point] == "A" else { return false }

        // Clockwise
        var points: [CGPoint] = [
            CGPoint(x: point.x + 1, y: point.y - 1),
            point,
            CGPoint(x: point.x - 1, y: point.y + 1)
        ]
        guard self.string(with: points) == "MAS" || self.string(with: points) == "SAM" else { return false }

        // Anti-clockwise
        points = [
            CGPoint(x: point.x - 1, y: point.y - 1),
            point,
            CGPoint(x: point.x + 1, y: point.y + 1)
        ]
        return self.string(with: points) == "MAS" || self.string(with: points) == "SAM"
    }
}
