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
    var price: Int
}

var productList = [Product(name:"popcorn", image:"popcorn", price:3),
                   Product(name:"milk", image:"milk", price:4),
                   Product(name:"salmon", image:"salmon", price:20),
                   Product(name:"coffee", image:"coffee", price:30),
                   Product(name:"chickenwing", image:"chickenwing", price:20),
                   Product(name:"almondmilk", image:"almondmilk", price:10),]
