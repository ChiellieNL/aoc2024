//
//  Stones.swift
//  day11
//
//  Created by Michiel Horvers on 11/12/2024.
//

import Foundation

/// Key: The actual number of the stone
/// Value: The amount of stones with that number
typealias StoneDict = [Int: Int]

struct Stones {
    var items: StoneDict

    init(input: String) {
        let numbers = input.components(separatedBy: " ").compactMap { Int($0) }
        items = StoneDict()
        for number in numbers {
            items.increase(number)
        }
    }

    /// The total number of stones
    var total: Int {
        items.reduce(0) {
            $0 + $1.value
        }
    }

    mutating func evolve(times: Int = 1) {
        for _ in 0..<times {
            var newItems = items

            for number in items.keys {
                // If the stone is engraved with the number 0, it is replaced by a stone engraved with the number 1.
                if number == 0 {
                    let count = items[number]!
                    newItems.decrease(number, with: count)
                    newItems.increase(1, with: count)

                /*
                 If the stone is engraved with a number that has an even number of digits, it is replaced by two stones.
                 The left half of the digits are engraved on the new left stone, and the right half of the digits are engraved on the new right stone.
                 (The new numbers don't keep extra leading zeroes: 1000 would become stones 10 and 0.)
                 */
                } else if let split = split(number) {
                    let count = items[number]!
                    newItems.decrease(number, with: count)
                    newItems.increase(split[0], with: count)
                    newItems.increase(split[1], with: count)

                /*
                 If none of the other rules apply, the stone is replaced by a new stone;
                 the old stone's number multiplied by 2024 is engraved on the new stone.
                 */
                } else {
                    let count = items[number]!
                    newItems.decrease(number, with: count)
                    newItems.increase(number * 2024, with: count)
                }
            }

            items = newItems
        }
    }

    private func split(_ number: Int) -> [Int]? {
        let string = String(number)
        guard string.count % 2 == 0 else { return nil }

        let half = string.count / 2

        let left = Int(string.prefix(half)) ?? 0
        let right = Int(string.suffix(half)) ?? 0

        return [left, right]
    }
}

private extension StoneDict {
    mutating func increase(_ number: Int, with amount: Int = 1) {
        if self[number] == nil {
            self[number] = amount
        } else {
            self[number]! += amount
        }
    }

    mutating func decrease(_ number: Int, with amount: Int = 1) {
        if self[number] != nil {
            self[number]! -= amount
        }
    }
}
