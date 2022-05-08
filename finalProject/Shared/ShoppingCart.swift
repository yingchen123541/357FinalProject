//
//  ShoppingCart.swift
//  finalProject
//
//  Created by yingying Chen on 5/5/22.
//

import SwiftUI

struct ShoppingCart: View {
    //keep track of total price when user add stuffs to shopping cart
    @State var total: Float = 0.0
    
    
    var body: some View {
        VStack{
        Text("Shopping Cart")
            .font(.largeTitle)
            .bold()
        Spacer()
        //display total price in 2 decimal places
        Text("Total: \(total, specifier: "%.2f")")
            .font(.custom("Copperplate",size:25))
        }
            
    }
}

struct ShoppingCart_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCart()
    }
}
