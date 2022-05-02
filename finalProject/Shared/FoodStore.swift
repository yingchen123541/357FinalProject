//
//  FoodStore.swift
//  Preferable simulator: iphone 11
//  Yuki_Chen_final_project
//  Created by yingying Chen on 5/2/22.
//

import Foundation

import SwiftUI
import Combine

class FoodStore : ObservableObject {
    
    @Published var foods: [Food]
    //an array for storing all the food dishes
    init (foods: [Food] = []) {
        self.foods = foods
}
    
}

