//
//  CartView.swift
//  finalProject (iOS)
//
//  Created by yingying Chen on 5/8/22.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0{
                ForEach(cartManager.products, id: \.id){
                    product in
                    ProductRow(product: product)
                }
                
                
                
                HStack{
                    Text("Your cart total is: ")
                    Spacer()
                    Text("$\(cartManager.total,specifier: "%.2f")")
                        .bold()
                }
                .padding()
            } else{
                Text("Your cart is empty")
            }
            NavigationLink("Start Over", destination: AddDateBudget())
            Spacer()
            NavigationLink("Finish Planning", destination: FinishPage())
            
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
       
        
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
