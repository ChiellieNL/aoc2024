//
//  Robot.swift
//  day14
//
//  Created by Michiel Horvers on 14/12/2024.
//

import Foundation
import Utils

struct Robot {
    var position: Point
    let velocity: Point

    init(position: Point, velocity: Point) {
        self.position = position
        self.velocity = velocity
    }

    mutating func move(gridSize: Size) {
        var newPosition = Point(x: position.x + velocity.x, y: position.y + velocity.y)
        if newPosition.x >= gridSize.width {
            newPosition.x = newPosition.x - gridSize.width
        } else if newPosition.x < 0 {
            newPosition.x = gridSize.width + newPosition.x
        }

        if newPosition.y >= gridSize.height {
            newPosition.y = newPosition.y - gridSize.height
        } else if newPosition.y < 0 {
            newPosition.y = gridSize.height + newPosition.y
        }

        self.position = newPosition
    }
}

extension Robot {
    static func parse(_ string: String) -> [Robot] {
        let lines = string.split(separator: "\n")

        return lines.map { line in
            var elements = line.split(separator: " ")
            elements[0].removeFirst(2)
            elements[1].removeFirst(2)
            let position = Point(x: Int(elements[0].split(separator: ",")[0])!, y: Int(elements[0].split(separator: ",")[1])!)
            let velocity = Point(x: Int(elements[1].split(separator: ",")[0])!, y: Int(elements[1].split(separator: ",")[1])!)
            return Robot(position: position, velocity: velocity)
        }
    }
}

extension Array where Element == Robot {
    func move(gridSize: Size, times: Int) -> [Robot] {
        var robots = self
        for _ in 0..<times {
            for i in 0..<robots.count {
                robots[i].move(gridSize: gridSize)
            }
        }
        return robots
    }

    func safetyFactor(for gridSize: Size) -> Int {
        // Don't count the center lines
        let halfX = gridSize.width / 2
        let halfY = gridSize.height / 2

        // Filter out all robots that are on the center lines
        let robots = self.filter { robot in
            robot.position.x != halfX && robot.position.y != halfY
        }

        // Divide them into quadrants
        let topLeft = robots.filter { robot in
            robot.position.x < halfX && robot.position.y < halfY
        }.count
        let topRight = robots.filter { robot in
            robot.position.x > halfX && robot.position.y < halfY
        }.count
        let bottomLeft = robots.filter { robot in
            robot.position.x < halfX && robot.position.y > halfY
        }.count
        let bottomRight = robots.filter { robot in
            robot.position.x > halfX && robot.position.y > halfY
        }.count

        return topLeft * topRight * bottomLeft * bottomRight
    }

    func dump(gridSize: Size) {
        var grid = Grid(size: gridSize, fill: "0")
        for robot in self {
            let curr = Int(grid[robot.position]!)!
            grid[robot.position] = "\(curr + 1)"
        }

        for y in 0..<gridSize.height {
            for x in 0..<gridSize.width {
                let val = grid[Point(x: x, y: y)]!
                print("\(val == "0" ? "." : val)", terminator: "")
            }
            print("")
        }
    }

    func hexGrid(gridSize: Size) -> Grid {
        var grid = Grid(size: gridSize, fill: ".")
        for robot in self {
            grid[robot.position] = "#"
        }

        return grid
    }
}

extension Grid {
    func dump(at y: Int) -> String {
        var line = ""
        for x in 0...self.maxX {
            let point = Point(x: x, y: y)
            line += self[point]!
        }
        return line
    }

    func print() {
        for y in 0...self.maxY {
            Swift.print(self.dump(at: y))
        }
    }
}
