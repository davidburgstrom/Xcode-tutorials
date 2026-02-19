//
//  MenuItem.swift
//  OrderApp
//
//  Created by David Burgstrom on 3/3/25.
//

import Foundation

struct MenuItem: Codable {
    var id: Int
    var name: String
    var detailText: String
    var price: Double
    var category: String
    var imageURL: URL
//    var prepTime: Double
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case detailText = "description"
        case price
        case category
        case imageURL = "image_url"
//        case prepTime = "estimated_prep_time"
    }
}
