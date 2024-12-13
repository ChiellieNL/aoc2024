//
//  Grid.swift
//  Utils
//
//  Created by Michiel Horvers on 12/12/2024.
//

import Foundation

/**
 # Grid

 Grid of points with String values.
 */
public struct Grid {
    /// The actual grid
    public var grid: [Point: String] = [:]

    /**
     Parses a string into a grid.

     - parameter string: The string to parse.
     */
    public init(from string: String) {
        let lines = string.split(separator: "\n")
        for (y, line) in lines.enumerated() {
            for (x, char) in line.enumerated() {
                let point = Point(x: x, y: y)
                grid[point] = String(char)
            }
        }
    }

    /// The highest x value in the grid
    public var maxX: Int {
        guard !grid.isEmpty else { return 0 }
        return grid.keys.map(\.x).max()!
    }

    /// The highest y value in the grid
    public var maxY: Int {
        guard !grid.isEmpty else { return 0 }
        return grid.keys.map(\.y).max()!
    }

    /// The grid's value at the specified point
    public subscript(_ point: Point) -> String? {
        grid[point]
    }
}