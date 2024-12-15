//
//  Direction+Movement.swift
//  day15
//
//  Created by Michiel Horvers on 15/12/2024.
//

import Foundation
import Utils

extension Direction {
    static func movement(from string: String) -> [Direction] {
        var result = [Direction]()

        for inx in 0..<string.count {
            switch string[inx] {
            case "<":
                result.append(.left)
            case ">":
                result.append(.right)
            case "^":
                result.append(.up)
            case "v":
                result.append(.down)

            default:
                break
            }
        }

        return result
    }
}
