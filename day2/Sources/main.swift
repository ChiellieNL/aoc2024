// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

let measurements = Measurement.measurements

/*
 Part 1
 */

let safeReports = measurements.filter(\.isSafe).count
print("Safe reports: \(safeReports)")

/*
 Part 2
 */

let safeWithDampener = measurements.filter(\.isSafeWithDampener).count
print("Safe reports with dampener: \(safeWithDampener)")
