//
//  Direction.swift
//  day10
//
//  Created by Michiel Horvers on 10/12/2024.
//

import Foundation
import CoreGraphics

enum Direction: CaseIterable {
    case up
    case down
    case left
    case right

    func move(from point: CGPoint) -> CGPoint {
        switch self {
        case .up:
            return CGPoint(x: point.x, y: point.y - 1)
        case .down:
            return CGPoint(x: point.x, y: point.y + 1)
        case .left:
            return CGPoint(x: point.x - 1, y: point.y)
        case .right:
            return CGPoint(x: point.x + 1, y: point.y)
        }
    }
}
