//
//  UIImageView+Extension.swift
//  SwiftHelperInit
//
//  Created by Sida on 21/10/25.
//

import UIKit

public extension UIImageView{
    
    convenience init(named: String, contentMode: UIView.ContentMode){
        self.init(image: UIImage(named: named))
        self.contentMode = contentMode
    }

    convenience init(image: UIImage?, contentMode: UIView.ContentMode){
        self.init(image: image)
        self.contentMode = contentMode
    }
    
    func addTarget(target: Any, action: Selector)  {
        let gesture = UITapGestureRecognizer(target: target, action: action)
        self.isUserInteractionEnabled = true
        self.addGestureRecognizer(gesture)
    }
    
    func loadImage(from: String, placeholder: UIImage? = nil) {
        self.image = placeholder
        guard let url = URL(string: from) else { return }
        URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let self = self,
                  let data = data,
                  let image = UIImage(data: data),
                  error == nil
            else { return }
            
            DispatchQueue.main.async {
                self.image = image
            }
        }.resume()
    }

    func loadImage(from: String, contentMode: UIView.ContentMode, placeholder: UIImage? = nil) {
        self.image = placeholder
        guard let url = URL(string: from) else { return }
        URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let self = self,
                  let data = data,
                  let image = UIImage(data: data),
                  error == nil
            else { return }
            
            DispatchQueue.main.async {
                self.image = image
                self.contentMode = contentMode
            }
        }.resume()
    }
}
