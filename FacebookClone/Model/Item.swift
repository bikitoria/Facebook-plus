//
//  Item.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-07-04.
//

import Foundation

struct Item: Identifiable, Hashable, Codable{
    let id: String
    var item_name: String
    var item_price: Int
    var imageName: String
}
