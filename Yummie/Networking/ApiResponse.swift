//
//  ApiResponse.swift
//  Yummie
//
//  Created by Mohamed on 10/02/2024.
//

import Foundation

struct ApiResponse<T: Decodable>: Decodable {
    let status: Int
    let message: String?
    let data: T?
    let error: String?
}
