//
//  String+Index.swift
//  day6
//
//  Created by Michiel Horvers on 06/12/2024.
//

import Foundation

extension String {
    public subscript(_ index: Int) -> Character? {
        guard self.count > index else { return nil }

        let inx = self.index(self.startIndex, offsetBy: index)
        return self[inx]
    }
}
