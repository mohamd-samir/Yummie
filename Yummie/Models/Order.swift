//
//  Order.swift
//  Yummie
//
//  Created by Mohamed on 30/01/2024.
//

import Foundation


struct Order: Decodable {
    let id, name: String?
    let dish: Dish?
//    let image : String?
}
