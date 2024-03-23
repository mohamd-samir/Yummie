//
//  DishCategory.swift
//  Yummie
//
//  Created by Mohamed on 25/01/2024.
//

import Foundation

struct DishCategory: Decodable {
    let id, name, image: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name = "title"
        case image
    }
}
