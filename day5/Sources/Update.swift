//
//  Update.swift
//  day5
//
//  Created by Michiel Horvers on 05/12/2024.
//

import Foundation

struct Update {
    var pages: [Int]
}

extension Update {
    static var updates: [Update] {
        var updates = [Update]()

        let lines = rawUpdateInput.components(separatedBy: .newlines)
        for line in lines {
            let pages = line.components(separatedBy: ",").map({ Int($0)! })
            updates.append(Update(pages: pages))
        }

        return updates
    }

    func conforms(to rules: [OrderRule]) -> Bool {
        for inx in 0..<(pages.count-1) {
            // check if the rules have invalid pages after inx
            let right = pages[(inx+1)...]
            let relatedRules = rules.filter({ $0.rightSide == pages[inx] })
            for rule in relatedRules {
                if right.contains(rule.leftSide) {
                    return false
                }
            }
        }

        return true
    }

    var centerPage: Int {
        pages[pages.count / 2]
    }

    mutating func fixOrdering(conformingTo rules: [OrderRule]) {
        for inx in 0..<(pages.count-1) {
            let page = pages[inx]
            let relatedRules = rules.filter({ $0.rightSide == page })

            for fix in inx..<pages.count {
                let testPage = pages[fix]
                if relatedRules.filter({ $0.leftSide == testPage }).count > 0 {
                    pages[inx] = testPage
                    pages[fix] = page

                    // re-iterate until we're done
                    fixOrdering(conformingTo: rules)
                    return
                }
            }

        }
    }
}
