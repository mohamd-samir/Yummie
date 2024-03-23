//
//  AllDishes.swift
//  Yummie
//
//  Created by Mohamed on 11/02/2024.
//

import Foundation

struct AllDishes: Decodable{
    let categories: [DishCategory]?
    let populars: [Dish]?
    let specials: [Dish]?
}

