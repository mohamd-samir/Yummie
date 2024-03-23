//
//  UIView+Extension.swift
//  Yummie
//
//  Created by Mohamed on 24/01/2024.
//

import UIKit

extension UIView{
    @IBInspectable var cornerRadius: CGFloat{
        get {return self.cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
