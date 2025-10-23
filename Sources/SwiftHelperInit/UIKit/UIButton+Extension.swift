//
//  UIButton+Extension.swift
//  SwiftHelperInit
//
//  Created by Sida on 21/10/25.
//

import UIKit

public struct ButtonStyle{
    public var textColor: UIColor
    public var backgroundColor: UIColor
    public var font: UIFont?
    
    public init(textColor: UIColor, backgroundColor: UIColor, font: UIFont? = nil) {
        self.textColor = textColor
        self.backgroundColor = backgroundColor
        self.font = font
    }
}

public struct CornerStyle {
    public var radius: CGFloat
    public var color: UIColor
    public var width: CGFloat
    
    public init(radius: CGFloat, color: UIColor, width: CGFloat) {
        self.radius = radius
        self.color = color
        self.width = width
    }
}
public struct ButtonTarget{
    public var target: Any
    public var action: Selector
    public var controlEvents: UIControl.Event = .touchUpInside

    public init(target: Any, action: Selector, controlEvents: UIControl.Event = .touchUpInside) {
        self.target = target
        self.action = action
        self.controlEvents =  controlEvents
    }
    
}
//font
public extension UIButton {
    convenience init(title: String) {
        self.init(type: .system)
        setTitle(title, for: .normal)
    }
    convenience init(title: String, font: UIFont?) {
        self.init(type: .system)
        setTitle(title, for: .normal)
        self.titleLabel?.font = font
    }
    
    convenience init(title: String, font: UIFont?, onTap: ButtonTarget) {
        self.init(title: title, font: font)
        self.addTarget(onTap.target, action: onTap.action, for: onTap.controlEvents)
    }
    
    convenience init(title: String, style: ButtonStyle, onTap: ButtonTarget) {
        self.init(title: title, font: style.font, onTap: onTap)
        setTitleColor(style.textColor, for: .normal)
        self.backgroundColor = style.backgroundColor
    }
    
    convenience init(title: String, style: ButtonStyle, corner: CornerStyle, height: CGFloat, onTap: ButtonTarget) {
        self.init(title: title, style: style, onTap: onTap)
        
        self.clipsToBounds = true
        self.layer.cornerRadius = corner.radius
        self.layer.borderColor = (corner.color).cgColor
        self.layer.borderWidth = corner.width
        self.constrainHeight(height)
    }
}

