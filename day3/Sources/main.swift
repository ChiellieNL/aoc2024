// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

/*
 Part 1
 */

func multiplyResult(of input: String) -> Int {
    // Use regex to find all occurrences of "mul([0-9]*,[0-9]*))" within rawInput
    let mulRegex = try! NSRegularExpression(pattern: "mul\\(([0-9]*),([0-9]*)\\)", options: [])
    let multipliers = mulRegex.matches(in: input, options: [], range: NSRange(location: 0, length: input.utf16.count))

    // convert the multipliers to a String array
    let targets = multipliers.map { (result) -> String in
        let range1 = Range(result.range(at: 1), in: input)!
        let range2 = Range(result.range(at: 2), in: input)!
        return String(input[range1]) + "," + String(input[range2])
    }

    // Convert the targets to [[Int]]
    let numbers = targets.map { (target) -> [Int] in
        return target.split(separator: ",").map { Int($0)! }
    }

    // Calculate the total of all multipliers of the numbers
    let total = numbers.reduce(0) { (result, numbers) -> Int in
        return result + numbers[0] * numbers[1]
    }

    return total
}

let total1 = multiplyResult(of: rawInput)


print("Total part 1: \(total1)")

/*
 Part 2
 */

// bleh.. Although I defined platforms to be macOS .v13, this is still crying about the Regex initializer
// just add the @available check to suppress the error
if #available(macOS 13.0, *) {
    let regex2 = try! Regex(#"mul\(\d{1,3},\d{1,3}\)|don't\(\)|do\(\)"#)
    let filtered = rawInput.ranges(of: regex2)
        .map({
            String(rawInput.substring(with: $0))
                .replacingOccurrences(of: "mul(", with: "")
                .replacingOccurrences(of: ")", with: "")
        })
        .map({ args in
            if args.contains(",") {
                let split = args.split(separator: ",").compactMap({ Int(String($0)) })
                return "\(split[0] * split[1])"
            } else {
                return args
            }
        })

    var result2 = 0

    var include = true
    for op in filtered {
        if op.starts(with: "don") {
            include = false
        } else if op.starts(with: "do") {
            include = true
        } else if include {
            result2 += (Int(op) ?? 0)
        }
    }

    print(result2)
}
