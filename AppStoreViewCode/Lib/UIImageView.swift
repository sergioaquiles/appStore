//
//  UIImageView.swift
//  AppStoreViewCode
//
//  Created by Sergio Cardoso on 07/03/22.
//

import UIKit


extension UIImageView {
    
    
    static func iconImage(width: CGFloat = 64, height: CGFloat = 64) -> UIImageView {
        
        let image = UIImageView()
        
        image.size(size: .init(width: width, height: height))
        image.backgroundColor = .purple
        image.layer.borderWidth = 0.5
        image.layer.borderColor = UIColor(white: 0.5, alpha: 0.5).cgColor
        image.layer.cornerRadius = 12
        image.clipsToBounds = true
                
        return image
        
    }
    
    static func screenShotImage() -> UIImageView {
        
        let image = UIImageView()
        
        image.backgroundColor = .purple
        image.layer.cornerRadius = 12
        image.layer.borderWidth = 0.5
        image.layer.borderColor = UIColor(white: 0.5, alpha: 0.5).cgColor
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        
        return image
    }
    
    
    
}
