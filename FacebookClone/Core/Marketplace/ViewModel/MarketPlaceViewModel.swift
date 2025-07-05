//
//  MarketPlaceViewModel.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-07-04.
//

import Foundation

class MarketPlaceViewModel: ObservableObject{
    @Published var items: [Item] = [
        .init(id: UUID().uuidString, item_name: "canon camera", item_price: 200, imageName: "camera"),
        .init(id: UUID().uuidString, item_name: "convertible E30 BMW", item_price: 30000, imageName: "carSale"),
        .init(id: UUID().uuidString, item_name: "1 room for rent", item_price: 1000, imageName: "roomSale"),
        .init(id: UUID().uuidString, item_name: "desk setup for sale - includes pc", item_price: 1500, imageName: "setupSale"),
    ]
    
}
