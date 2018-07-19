//
//  CustomCardView.swift
//  MeetingApp
//
//  Created by Mihai Ruber on 7/18/18.
//  Copyright © 2018 Mihai Ruber. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class CustomCardView: UIView {
    @IBInspectable var cornerRadius: CGFloat = 1
    @IBInspectable var shadowColor: UIColor? = #colorLiteral(red: 0.9999127984, green: 1, blue: 0.9998814464, alpha: 1)
    @IBInspectable let shadowOffSetWidth: Int = 0
    @IBInspectable let shadowOffSetHeight: Int = 1
    @IBInspectable let shadowOpacity: Float = 0.2
    
    override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        layer.shadowColor = shadowColor?.cgColor
        layer.shadowOffset = CGSize(width: shadowOffSetWidth, height: shadowOffSetHeight)
        
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        layer.shadowPath = shadowPath.cgPath
        layer.shadowOpacity = shadowOpacity
    }
    
    
    
    
    
}
