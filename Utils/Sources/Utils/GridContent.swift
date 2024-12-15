//
//  GridContent.swift
//  Utils
//
//  Created by Michiel Horvers on 15/12/2024.
//

import Foundation

public protocol GridContent: Equatable, Hashable {
    init(character: Character)
    var stringValue: String { get }
}

extension String: GridContent {
    public init(character: Character) {
        self = String(character)
    }

    public var stringValue: String {
        self
    }
}

extension Int: GridContent {
    public init(character: Character) {
        self = Int(String(character))!
    }

    public var stringValue: String {
        String(self)
    }
}

extension Double: GridContent {
    public init(character: Character) {
        self = Double(String(character))!
    }

    public var stringValue: String {
        String(self)
    }
}

extension Character: GridContent {
    public init(character: Character) {
        self = character
    }

    public var stringValue: String {
        String(self)
    }
}
