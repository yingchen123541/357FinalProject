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
    var description: String
}

var productList = [Product(name:"popcorn", image:"popcorn", price:3, description:"microwave popcorn 1lb"),
                   Product(name:"milk", image:"milk", price:4, description: "fairlife milk 2%"),
                   Product(name:"salmon", image:"salmon", price:20, description:"salmon steak 1lb"),
                   Product(name:"coffee", image:"coffee", price:30, description:"starbucks coffee pods pack of 72"),
                   Product(name:"chickenwing", image:"chickenwing", price:20, description: "chicken wing 1lb"),
                   Product(name:"almondmilk", image:"almondmilk", price:10, description:"almond milk 32oz pack of 6"),]
