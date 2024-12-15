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
public struct Grid<Content: GridContent> {
    /// The actual grid
    public var grid: [Point: Content] = [:]

    /**
     Parses a string into a grid.

     - parameter string: The string to parse.
     */
    public init(from string: String) {
        let lines = string.split(separator: "\n")
        for (y, line) in lines.enumerated() {
            for (x, char) in line.enumerated() {
                let point = Point(x: x, y: y)
                grid[point] = Content.init(character: char)
            }
        }
    }

    /**
     Initializes a grid with a specified width and height and fills it with the specified value.

     - parameter width: The width of the grid.
     - parameter height: The height of the grid.
     - parameter fill: The value to fill the grid with.
     */
    public init(width: Int, height: Int, fill: Content) {
        for y in 0..<height {
            for x in 0..<width {
                let point = Point(x: x, y: y)
                grid[point] = fill
            }
        }
    }

    /**
     Initializes a grid with a specified size and fills it with the specified value.

     - parameter size: The size of the grid.
     - parameter fill: The value to fill the grid with.
     */
    public init(size: Size, fill: Content) {
        self.init(width: size.width, height: size.height, fill: fill)
    }

    /// The highest x value in the grid
    public var maxX: Int {
        guard !grid.isEmpty else { return 0 }
        return grid.keys.map(\.x).max()!
    }

    /// The width of the grid
    public var width: Int {
        maxX + 1
    }

    /// The highest y value in the grid
    public var maxY: Int {
        guard !grid.isEmpty else { return 0 }
        return grid.keys.map(\.y).max()!
    }

    /// The height of the grid
    public var height: Int {
        maxY + 1
    }

    /// The size of the grid
    public var size: Size {
        Size(width: width, height: height)
    }

    /// The grid's value at the specified point
    public subscript(_ point: Point) -> Content? {
        get {
            grid[point]
        }
        set {
            grid[point] = newValue
        }
    }

    /**
     Checks if the grid contains a point.

     - parameter point: The point to check.
     - returns: Whether the grid contains the point.
     */
    public func contains(_ point: Point) -> Bool {
        grid.keys.contains(point)
    }

    public func print() {
        for y in 0...maxY {
            var line = ""
            for x in 0...maxX {
                let point = Point(x: x, y: y)
                line += self[point]?.stringValue ?? " "
            }
            Swift.print(line)
        }
    }
}
