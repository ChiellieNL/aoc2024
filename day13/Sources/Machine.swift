//
//  Machine.swift
//  day13
//
//  Created by Michiel Horvers on 13/12/2024.
//

import Foundation
import Utils

struct Machine {
    let buttonA: Point
    let buttonB: Point
    let prize: Point
}

extension Machine {
    static func `import`(from string: String) -> [Machine] {
        var result = [Machine]()

        var lines = string.split(separator: "\n")
        lines.removeAll(where: { $0.isEmpty })

        var step = 0
        var buttonA: Point = Point(x: 0, y: 0)
        var buttonB: Point = Point(x: 0, y: 0)
        var prize: Point = Point(x: 0, y: 0)

        for line in lines {
            /*
             For step 0 and 1, X and Y have '+' markers
             For step 2, X and Y have '=' markers
             */
            if step < 2 {
                let elements = line.split(separator: "+")
                let x = Int(elements[1].split(separator: ",")[0])!
                let y = Int(elements[2])!

                if step == 0 {
                    buttonA = Point(x: x, y: y)
                } else {
                    buttonB = Point(x: x, y: y)
                }

            } else {
                let elements = line.split(separator: "=")
                let x = Int(elements[1].split(separator: ",")[0])!
                let y = Int(elements[2])!
                prize = Point(x: x, y: y)

                result.append(Machine(buttonA: buttonA, buttonB: buttonB, prize: prize))
            }

            step += 1
            if step == 3 {
                step = 0
            }
        }

        return result
    }

    func cheapestWin(isPart2: Bool) -> (buttonA: Int, buttonB: Int) {
        /*
         This function implies that the problem can be resolved by using a technique
         from linear algebra/mathematics called linear combinations.
         Essentially, the increments of coordinates when the buttons are pressed form a system of linear equations
         that can be solved to find how many times you should press each button.

         The coefficients of the system of equations are the increments for each button press,
         and solving the system involves finding the correct multiples for these coefficients that
         add up to the final required coordinates.
         In matrix form, it becomes ax + by = p, where a and b are constants (buttonA.x/buttonA.y, buttonB.x/buttonB.y),
         x and y are the variables we want to solve for (buttonA, buttonB presses),
         and p is the point we want to reach (prize.x, prize.y).
         */
        let ax = Double(buttonA.x)
        let bx = Double(buttonB.x)
        let ay = Double(buttonA.y)
        let by = Double(buttonB.y)
        var px = Double(prize.x)
        var py = Double(prize.y)

        if isPart2 {
            px += 10000000000000
            py += 10000000000000
        }

        let aRatio = (px - py*(bx/by))/(ax - ay*(bx/by))
        let bRatio = (px - py*(ax/ay))/(bx - by*(ax/ay))

        if abs(aRatio.rounded(.toNearestOrEven) - aRatio) < 0.01
            && abs(bRatio.rounded(.toNearestOrEven) - bRatio) < 0.01 {
            return (buttonA: Int(aRatio.rounded(.toNearestOrEven)), buttonB: Int(bRatio.rounded(.toNearestOrEven)))

        } else {
            // Can't be solved
            return (buttonA: 0, buttonB: 0)
        }
    }

    func tokens(isPart2: Bool) -> Int {
        let hits = cheapestWin(isPart2: isPart2)
        return hits.buttonA * 3 + hits.buttonB
    }
}
