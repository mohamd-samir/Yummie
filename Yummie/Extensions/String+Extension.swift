//
//  String+Extension.swift
//  Yummie
//
//  Created by Mohamed on 25/01/2024.
//

import Foundation

extension String {
    var asUrl: URL?{
        return URL(string: self)
    }
}
