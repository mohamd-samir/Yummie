//
//  UlViewController+Extension.swift
//  Yummie
//
//  Created by Mohamed on 30/01/2024.
//

import UIKit


extension UIViewController {
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(identifier: identifier) as! Self
    }
}
