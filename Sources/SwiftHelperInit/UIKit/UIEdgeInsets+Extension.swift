//
//  UIButton+Extension.swift
//  SwiftHelperInit
//
//  Created by Sida on 21/10/25.
//

import UIKit

public extension UIEdgeInsets{
    
    convenience init(vertical: CGFloat) {
        self.init(top: vertical, left: 0, bottom: vertical, right: 0)
    }
    
    convenience init(horizontal: CGFloat) {
        self.init(top: 0, left: horizontal, bottom: 0, right: horizontal)
    }
    
    convenience init(all: CGFloat){
        self.init(top: all, left: all, bottom: all, right: all)
    }
}
