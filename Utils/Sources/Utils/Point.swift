//
//  Point.swift
//  Utils
//
//  Created by Michiel Horvers on 12/12/2024.
//

import Foundation

/**
 # Point

 A point in a grid.
 */
public struct Point: Equatable, Hashable {
    /// X coordinate
    public var x: Int
    /// Y coordinate
    public var y: Int

    public init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }

    /**
     Moves the point into the specified direction.

     - parameter direction: The direction to move to.
     - returns: The new point.
     */
    public func move(_ direction: Direction) -> Point {
        switch direction {
        case .left:
            Point(x: self.x - 1, y: self.y)
        case .right:
            Point(x: self.x + 1, y: self.y)
        case .up:
            Point(x: self.x, y: self.y - 1)
        case .down:
            Point(x: self.x, y: self.y + 1)
        }
    }
}

extension Point: CustomStringConvertible {
    public var description: String {
        "(\(x), \(y))"
    }
}
