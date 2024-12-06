//
//  Direction.swift
//  day6
//
//  Created by Michiel Horvers on 06/12/2024.
//

import Foundation
import CoreGraphics

enum Direction {
    case up
    case down
    case left
    case right
}

extension Direction {
    var nextDirection: Direction {
        switch self {
        case .up: return .right
        case .right: return .down
        case .down: return .left
        case .left: return .up
        }
    }

    func nextPoint(for current: CGPoint) -> CGPoint {
        switch self {
        case .up: return CGPoint(x: current.x, y: current.y - 1)
        case .right: return CGPoint(x: current.x + 1, y: current.y)
        case .down: return CGPoint(x: current.x, y: current.y + 1)
        case .left: return CGPoint(x: current.x - 1, y: current.y)
        }
    }

    func previousPoint(for current: CGPoint) -> CGPoint {
        switch self {
        case .up: return CGPoint(x: current.x, y: current.y + 1)
        case .right: return CGPoint(x: current.x - 1, y: current.y)
        case .down: return CGPoint(x: current.x, y: current.y - 1)
        case .left: return CGPoint(x: current.x + 1, y: current.y)
        }
    }
}
