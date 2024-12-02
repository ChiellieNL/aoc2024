//
//  Measurement.swift
//  day2
//
//  Created by Michiel Horvers on 02/12/2024.
//


struct Measurement {
    let numbers: [Int]

    static var measurements: [Measurement] {
        let input = rawInput.components(separatedBy: .newlines)
        return input.map { Measurement(numbers: $0.split(separator: " ").map { Int($0)! }) }
    }

    var isSafe: Bool {
        isSafeRange(self.numbers)
    }

    var isSafeWithDampener: Bool {
        // If already safe, no need to check further
        guard !isSafe else { return true }

        // If removing one number makes it safe, return true
        for inx in 0..<numbers.count {
            var numbers = numbers
            numbers.remove(at: inx)

            if isSafeRange(numbers) {
                return true
            }
        }

        return false
    }

    private func isSafeRange(_ numbers: [Int]) -> Bool {
        var isUp = true

        for inx in 1..<numbers.count {
            if inx == 1 && numbers[inx] < numbers[inx - 1] {
                isUp = false
            }

            // Any two adjacent levels differ by at least one and at most three.
            guard abs(numbers[inx] - numbers[inx - 1]) <= 3 else { return false }

            // The levels are either all increasing or all decreasing.
            guard (isUp && numbers[inx] > numbers[inx - 1]) || (!isUp && numbers[inx] < numbers[inx - 1]) else { return false }
        }

        return true
    }
}
