//
//  PathFinder.swift
//  day10
//
//  Created by Michiel Horvers on 10/12/2024.
//

import Foundation
import CoreGraphics

struct PathFinder {
    let grid: Grid
    let start: CGPoint

    var routes: [CGPoint: Int] = [:]

    init(grid: Grid, start: CGPoint) {
        self.grid = grid
        self.start = start
    }

    mutating func findRoutes(at point: CGPoint? = nil) {
        let point = point ?? start

        if grid.value(at: point) == 9 {
            if let value = routes[point] {
                routes[point] = value + 1
            } else {
                routes[point] = 1
            }

            return
        }

        for direction in Direction.allCases {
            if let next = next(from: point, direction: direction) {
                findRoutes(at: next)
            }
        }
    }

    private func next(from point: CGPoint, direction: Direction) -> CGPoint? {
        guard let current = grid.value(at: point) else { return nil }

        let nextPoint = direction.move(from: point)
        guard let next = grid.value(at: nextPoint) else { return nil }
        return next == current + 1 ? nextPoint : nil
    }
}
