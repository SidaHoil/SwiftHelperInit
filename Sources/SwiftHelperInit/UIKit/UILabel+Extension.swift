//
//  UILabel+Extension.swift
//  SwiftHelperInit
//
//  Created by Sida on 16/10/25.
//

import UIKit

public extension UILabel{
    
    convenience init(text: String) {
        self.init()
        self.text = text
    }

    convenience init(text: String, numberOfLines: Int = 0) {
        self.init()
        self.text = text
        self.numberOfLines = numberOfLines
    }
    
    convenience init(text: String, textColor: UIColor = .label,font: UIFont = .systemFont(ofSize: 14), textAlignment: NSTextAlignment = .natural) {
        self.init()
        self.text = text
        self.textColor = textColor
        self.font = font
        self.textAlignment = textAlignment
    }

    convenience init(text: String, textColor: UIColor = .label,font: UIFont = .systemFont(ofSize: 14), numberOfLines: Int = 0, textAlignment: NSTextAlignment = .natural) {
        self.init()
        self.text = text
        self.textColor = textColor
        self.font = font
        self.numberOfLines = numberOfLines
        self.textAlignment = textAlignment
    }
}

