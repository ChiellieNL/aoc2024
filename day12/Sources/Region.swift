//
//  Region.swift
//  day12
//
//  Created by Michiel Horvers on 12/12/2024.
//

import Foundation
import Utils

// MARK: - Region

/// A region of plants of the same type
struct Region {
    /// A fence element around the region
    struct Fence: Hashable {
        /// Point of the fence
        let point: Point
        /// Direction of the fence
        let direction: Direction
    }

    /// Points within the region
    var points: Set<Point>
    /// Plant type of this region
    var plant: String

    /// Fences around the region
    var fences: [Fence] {
        // Look at all points in the region and check if there is a point in each direction that is not in the region.
        // If so, add a fence.
        points
            .flatMap { point in
                Direction.allCases.filter { direction in
                    let neighbor = point.move(direction)
                    return !points.contains(neighbor)
                }.map { direction in
                    Fence(point: point, direction: direction)
                }
            }
    }

    /// The area value for this region
    var area: Int {
        points.count
    }

    /// The perimeter value for this region
    var perimeter: Int {
        fences.count
    }

    /// The number of sides of this region
    var sides: Int {
        /*
         Find the corners (defined as when there isn't another fence in the clockwise direction from the current fence) of the shape
         */
        let fences = self.fences
        return fences
            .filter { fence in
                let neighbor = fence.point.move(fence.direction.next)
                let nextFence = Fence(point: neighbor, direction: fence.direction)
                return !fences.contains(nextFence)
            }
            .count
    }

    func dump() {
        print("\(plant): \(points.map({ $0.description}).joined(separator: ", ")) area: \(points.count) perimeter: \(fences.count)")
    }
}

extension Region {
    static func map(_ grid: Grid) -> [Region] {
        var result: [Region] = []

        for y in 0...grid.maxY {
            for x in 0...grid.maxX {
                let point = Point(x: x, y: y)
                // Skip points that are already part of another region
                guard !result.contains(point) else { continue }

                let plant = grid[point]!
                var region = Region(points: [point], plant: plant)

                /*
                 make a region of all equal letters that touch each other
                 scan all possible directions, in case one of them contains the same plant,
                 add it and add all of those directions to the queue with locations to test
                 */
                var queue: [Point] = [point]
                while !queue.isEmpty {
                    let current = queue.removeFirst()

                    for direction in Direction.allCases {
                        let next = current.move(direction)
                        guard grid[next] == plant else { continue }
                        guard !region.points.contains(next) else { continue }

                        region.points.insert(next)
                        queue.append(next)
                    }
                }

                result.append(region)
            }
        }

        return result
    }
}

// MARK: - [Region] helpers

extension Array where Element == Region {
    func contains(_ point: Point) -> Bool {
        self.contains(where: { $0.points.contains(point) })
    }
}

// MARK: - Fence direction

extension Direction {
    /**
     Returns the next fence direction

     Consider:

     ```
     + - +
     |   |
     + - +
     ```

     Looking clockwise, the next direction of the left fence is up,
     the next direction of the up fence is right,
     the next direction of the right fence is down,
     and the next direction of the down fence is left.

     */
    var next: Direction {
        switch self {
        case .left: return .up
        case .up: return .right
        case .right: return .down
        case .down: return .left
        }
    }
}
