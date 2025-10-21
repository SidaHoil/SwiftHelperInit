//
//  UIImageView+Extension.swift
//  SwiftHelperInit
//
//  Created by Sida on 21/10/25.
//

import UIKit

extension UIImageView{
    
    convenience init(named: String, contentMode: UIView.ContentMode){
        self.init(image: UIImage(named: named))
        self.contentMode = contentMode
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
}
