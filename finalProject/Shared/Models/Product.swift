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

var productList = [Product(name:"spinach", image:"spinach", price:2, description:"spinach 1lb"),
                   Product(name:"salad", image:"salad", price:2, description:"romaine salad mix 8oz"),
                   Product(name:"mushroom", image:"mushroom", price:3, description:"mushroom 8oz"),
                   Product(name:"strawberry", image:"strawberry", price:8, description:"strawberry 2lb"),
                   Product(name:"orange", image:"orange", price:10, description:"orange 8lb"),
                   Product(name:"bread", image:"bread", price:3, description:"white bread 1 loaf"),
                   Product(name:"danish", image:"danish", price:10, description:"assorted danish(cheese and cherry flavors, pack of 9)"),
                   Product(name:"steak", image:"steak", price:8, description:"NewYork steak 8oz"),
                   Product(name:"chickenwing", image:"chickenwing", price:20, description: "chicken wing 1lb"),
                   Product(name:"salmon", image:"salmon", price:20, description:"salmon steak 1lb"),
                   Product(name:"proteinshake", image:"proteinshake", price:25, description:"chocolate flavor protein shake pack of 12 bottles"),
                   Product(name:"almondmilk", image:"almondmilk", price:10, description:"almond milk 32oz pack of 6"),
                   Product(name:"milk", image:"milk", price:4, description: "fairlife milk 2%"),
                   Product(name:"seaweed", image:"seaweed", price:10, description: "seaweed pack of 12"),
                   Product(name:"udon", image:"udon", price:15, description: "instant udon noodles pack of 6"),
                   Product(name:"popcorn", image:"popcorn", price:3, description:"microwave popcorn 1lb"),
                   Product(name:"cookies", image:"cookies", price:10, description: "hello panda cookies 1lb"),
                   Product(name:"chips", image:"chips", price:5, description: "lays potato chips 1 bag"),
                   Product(name:"granola bar", image:"bar", price:9, description: "granola bars 1 lb"),
                   Product(name:"coffee", image:"coffee", price:30, description:"starbucks coffee pods pack of 72"),
                   
                   ]
