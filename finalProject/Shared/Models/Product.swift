//
//  Product.swift
//  finalProject (iOS)
//
//  Created by yingying Chen on 5/8/22.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Float
}

var productList = [Product(name:"popcorn", image:"popcorn", price:3.5),
                   Product(name:"milk", image:"milk", price:4.5)]
