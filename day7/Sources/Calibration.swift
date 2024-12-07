//
//  Calibration.swift
//  day7
//
//  Created by Michiel Horvers on 07/12/2024.
//

import Foundation

/*
 Part 1
 */

/* *
enum Operator: CaseIterable {
    case add
    case multiply

    func result(lhs: Int, rhs: Int) -> Int {
        switch self {
        case .add: lhs + rhs
        case .multiply: lhs * rhs
        }
    }

    static func matrix(numbers: Int) -> [[Operator]] {
        // base case
        guard numbers > 1 else { return [] }

        // recursive case
        if numbers == 2 {
            return Operator.allCases.flatMap { firstOp in
                Operator.allCases.map { secondOp in
                    [firstOp, secondOp]
                }
            }
        } else {
            return Operator.matrix(numbers: numbers-1).flatMap { array in
                Operator.allCases.map { op in
                    var newArray = array
                    newArray.append(op)
                    return newArray
                }
            }
        }
    }
}

struct Calibration {
    let result: Int
    let numbers: [Int]
}

extension Calibration {
    static var calibrations: [Calibration] {
        var calibrations = [Calibration]()

        let lines = testInput.components(separatedBy: .newlines)
        for line in lines {
            let components = line.components(separatedBy: ":")
            let result = Int(components[0])!
            let numberComps = components[1].components(separatedBy: " ")
            let numbers = numberComps.compactMap({ Int($0) })
            calibrations.append(Calibration(result: result, numbers: numbers))
        }

        return calibrations
    }
}

extension Calibration {
    func evaluateNumbers(withOperators opers: [Operator]) -> Int {
        guard !numbers.isEmpty else {
            return 0
        }
        var res = numbers[0]
        for i in 1..<numbers.count {
            let op = opers[i - 1]
            let num = numbers[i]
            switch op {
            case .add:
                res += num
            case .multiply:
                res *= num
            }
        }
        return res
    }
}

extension Array where Element == Calibration {
    func calibrationResult() -> Int {
        var total = 0
        for calibration in self {
            let matrices = Operator.matrix(numbers: calibration.numbers.count)
            for mat in matrices {
                if calibration.evaluateNumbers(withOperators: mat) == calibration.result {
                    total += calibration.result
                    break
                }
            }
        }
        return total
    }
}
// */

/*
 Part 2
 */
enum Operator: CaseIterable {
    case add
    case multiply
    case concatenate

    func result(lhs: Int, rhs: Int) -> Int {
        switch self {
        case .add: return lhs + rhs
        case .multiply: return lhs * rhs
        case .concatenate: return Int("\(lhs)\(rhs)") ?? 0
        }
    }

    static func matrix(numbers: Int) -> [[Operator]] {
        guard numbers > 1 else { return [] }
        if numbers == 2 {
            return Operator.allCases.flatMap { firstOp in
                Operator.allCases.map { secondOp in
                    [firstOp, secondOp]
                }
            }
        } else {
            return Operator.matrix(numbers: numbers - 1).flatMap { array in
                Operator.allCases.map { op in
                    var newArray = array
                    newArray.append(op)
                    return newArray
                }
            }
        }
    }
}

struct Calibration {
    let result: Int
    let numbers: [Int]
}

extension Calibration {
    static var calibrations: [Calibration] {
        var calibrations = [Calibration]()

        let lines = rawInput.components(separatedBy: .newlines)
        for line in lines {
            let components = line.components(separatedBy: ":")
            let result = Int(components[0])!
            let numberComps = components[1].components(separatedBy: " ")
            let numbers = numberComps.compactMap({ Int($0) })
            calibrations.append(Calibration(result: result, numbers: numbers))
        }

        return calibrations
    }
}

extension Calibration {
    func evaluateNumbers(withOperators opers: [Operator]) -> Int {
        guard !numbers.isEmpty else {
            return 0
        }
        var res = numbers[0]
        for i in 1..<numbers.count {
            let op = opers[i - 1]
            let num = numbers[i]
            res = op.result(lhs: res, rhs: num)
        }
        return res
    }
}

extension Array where Element == Calibration {
    func calibrationResult() -> Int {
        var total = 0
        for calibration in self {
            let matrices = Operator.matrix(numbers: calibration.numbers.count)
            for mat in matrices {
                if calibration.evaluateNumbers(withOperators: mat) == calibration.result {
                    total += calibration.result
                    break
                }
            }
        }
        return total
    }
}
