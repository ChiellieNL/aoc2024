// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

var disk = DiskMap(from: rawInput)

/*
 Part 1
 */

/* *
disk.compressPart1()
let checksum = disk.checksum

print("Checksum part 1: \(checksum)")
// */

/*
 Part 2
 */

disk.compressPart2()
let checksum = disk.checksum
print("Checksum part 2: \(checksum)")
