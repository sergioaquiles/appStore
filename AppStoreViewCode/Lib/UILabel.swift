//
//  UILabel.swift
//  AppStoreViewCode
//
//  Created by Sergio Cardoso on 07/03/22.
//

import UIKit


import UIKit

extension UILabel {
    
    static func textLabel (text: String, fontSize: CGFloat, numberOfLines: Int = 1) -> UILabel {
        
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: fontSize)
        label.numberOfLines = numberOfLines
        label.text = text
        
        return label
    }
    
    
}
