//
//  CartView.swift
//  finalProject (iOS)
//
//  Created by yingying Chen on 5/8/22.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        ScrollView{
            Text("Your cart is empty")
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
        
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
