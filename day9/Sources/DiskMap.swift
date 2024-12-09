//
//  DiskMap.swift
//  day9
//
//  Created by Michiel Horvers on 09/12/2024.
//

import Foundation

struct DiskMap {
    enum Block: Equatable {
        case file(id: Int)
        case empty
    }

    var disk: [Block]
    let maxFileId: Int

    init(from input: String) {
        disk = []

        var isFile = true
        var fileId = 0
        var max = 0

        for inx in 0..<input.count {
            let number = Int(String(input[inx]!))!

            for _ in 0..<number {
                disk.append(isFile ? .file(id: fileId) : .empty)
                max = fileId
            }

            if isFile {
                fileId += 1
            }
            isFile.toggle()
        }

        maxFileId = max
    }

    var checksum: Int {
        var result = 0

        for inx in 0..<disk.count {
            switch disk[inx] {
            case .file(let id):
                result += (inx * id)

            case .empty:
                break
            }
        }

        return result
    }
}

extension DiskMap {
    mutating func compressPart1() {
        var newDisk: [Block] = disk

        for inx in stride(from: disk.count - 1, through: 0, by: -1) {
            switch disk[inx] {
            case .file(let id):
                let free = newDisk.firstIndex(of: .empty)!
                guard free < inx else { continue }
                newDisk[free] = .file(id: id)
                newDisk[inx] = .empty

            case .empty:
                break
            }
        }

        disk = newDisk
    }

    mutating func compressPart2() {
        var newDisk: [Block] = disk

        for id in stride(from: maxFileId, through: 0, by: -1) {
            let size = disk.filter({ $0 == .file(id: id) }).count
            let start = disk.firstIndex(of: .file(id: id))!

            if let freeIndex = freeIndex(ofSize: size, in: newDisk, below: start) {
                for inx in 0..<size {
                    newDisk[freeIndex + inx] = .file(id: id)
                    newDisk[start + inx] = .empty
                }
            }
        }

        disk = newDisk
    }

    func freeIndex(ofSize size: Int, in disk: [Block], below: Int) -> Int? {
        var count = 0

        for inx in 0..<below {
            switch disk[inx] {
            case .file:
                count = 0
            case .empty:
                count += 1
                if count == size {
                    return inx - size + 1
                }
            }
        }

        return nil
    }
}


extension DiskMap {
    func dump() {
        for inx in 0..<disk.count {
            switch disk[inx] {
            case .file(let id):
                print("\(id)", terminator: "")
            case .empty:
                print(".", terminator: "")
            }
        }
        print("\n")
    }
}
