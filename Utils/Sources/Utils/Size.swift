//
//  Size.swift
//  Utils
//
//  Created by Michiel Horvers on 14/12/2024.
//

import Foundation

public struct Size: Equatable, Hashable, Sendable {
    /// Width of the size
    public var width: Int
    /// Height of the size
    public var height: Int

    public init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
}
