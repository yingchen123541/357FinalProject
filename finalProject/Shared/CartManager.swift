//
//  CartManager.swift
//  finalProject
//
//  Created by yingying Chen on 5/8/22.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var grocerys: [Food] = []
    @Published private(set) var total2: Float = 0.0
    
    
    func addToCart(food: Food){
        grocerys.append(food)
  //      var food_price: Float? = Float(food.price)
       
    }
    
 //   func removeFromCart()

}
