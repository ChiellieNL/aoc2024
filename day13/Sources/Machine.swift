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

    /*
     This code would perfectly work for part 1, but it's too slow for part 2.
     */
    func cheapestWin(isPart2: Bool) -> (buttonA: Int, buttonB: Int) {
        var minSteps = Int.max
        var optimalA = 0
        var optimalB = 0

        let maxSteps = isPart2 ? 100000 : 100

        var prize = self.prize
        if isPart2 {
            prize.x += 10000000000000
            prize.y += 10000000000000
        }

        for a in 0...maxSteps {
            for b in 0...maxSteps {
                if buttonA.x * a + buttonB.x * b == prize.x && buttonA.y * a + buttonB.y * b == prize.y {
                    let steps = a + b
                    if steps < minSteps {
                        minSteps = steps
                        optimalA = a
                        optimalB = b
                    }
                }
            }
        }

        return (buttonA: optimalA, buttonB: optimalB)
    }

    func tokens(isPart2: Bool) -> Int {
        let hits = cheapestWin(isPart2: isPart2)
        return hits.buttonA * 3 + hits.buttonB
    }
}
