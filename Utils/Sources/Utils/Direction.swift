//
//  Direction.swift
//  Utils
//
//  Created by Michiel Horvers on 12/12/2024.
//

import Foundation

public enum Direction: CaseIterable, Equatable {
    case left
    case right
    case up
    case down

    public var opposite: Direction {
        switch self {
        case .left: return .right
        case .right: return .left
        case .up: return .down
        case .down: return .up
        }
    }
}
