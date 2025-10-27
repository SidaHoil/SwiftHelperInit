//
//  UIButton+Extension.swift
//  SwiftHelperInit
//
//  Created by Sida on 21/10/25.
//

import UIKit

public extension UIEdgeInsets{
    
    init(vertical: CGFloat) {
        self.init(top: vertical, left: 0, bottom: vertical, right: 0)
    }
    
    init(horizontal: CGFloat) {
        self.init(top: 0, left: horizontal, bottom: 0, right: horizontal)
    }
    
    init(all: CGFloat) {
        self.init(top: all, left: all, bottom: all, right: all)
    }

    init(top: CGFloat, left: CGFloat, right: CGFloat) {
        self.init(top: top, left: left, bottom: 0, right: right)
    }

    init(left: CGFloat, right: CGFloat, bottom: CGFloat) {
        self.init(top: 0, left: left, bottom: bottom, right: right)
    }
}
