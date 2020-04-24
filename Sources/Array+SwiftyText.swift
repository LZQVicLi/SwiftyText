//
//  Array+SwiftyText.swift
//  SwiftyText
//
//  Created by apple on 2020/4/24.
//  Copyright © 2020 yinhe. All rights reserved.
//

import Foundation
import CoreGraphics

internal extension Array where Element == CGRect {
    func st_rects_union() -> CGRect  {
        var unionRect: CGRect = .zero
        for (i, rect) in self.enumerated() {
            if i == 0 {
                unionRect = rect
            } else {
                unionRect = unionRect.union(rect)
            }
        }
        return unionRect
    }
}
