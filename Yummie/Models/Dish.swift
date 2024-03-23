//
//  Dish.swift
//  Yummie
//
//  Created by Mohamed on 27/01/2024.
//

import Foundation

struct Dish: Decodable {
    let id, name, description, image : String?
    let calories: Int?
    
    var formattedCalories: String {
        return "\(calories ?? 0) calories"
    }
}

