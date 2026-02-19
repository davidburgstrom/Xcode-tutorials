//
//  Order.swift
//  OrderApp
//
//  Created by David Burgstrom on 3/3/25.
//

import Foundation

struct Order: Codable {
    var menuItems: [MenuItem]
    
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}

