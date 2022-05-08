//
//  GroceryItemList.swift
//  finalProject (iOS)
//
//  Created by yingying Chen on 5/8/22.
//

import SwiftUI


struct GroceryItemList: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns, spacing: 20){
                    ForEach(productList, id: \.id) { product in ProductCard(product: product)
                            .environmentObject(cartManager)
              }
            }
                .padding()
            }
            .navigationTitle(Text("Grocery Item"))
            .toolbar {
                NavigationLink{
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
               
            }
        }//end navigation view
        .navigationViewStyle(StackNavigationViewStyle())
        
        
    }
}


struct ProductCard: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
     //   NavigationView {
    
        
        ZStack(alignment: .topTrailing){
            ZStack(alignment: .bottom){
                
                
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
            
                VStack(alignment: .leading){
                    Text(product.name)
                        .bold()
                    
                    Text("$\(product.price,specifier: "%.2f")")
                        .font(.caption)
                    
                    
                    NavigationLink(destination: ProductDetail(selectedProduct: product)){
                        Text("details")
                            .font(.caption2)
                    }//end navigation link
                
                }
                .padding()
                .frame(width: 150, height:60, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
                
               
                
            }//end inside zstack
            .frame(width: 180, height: 250)
            .shadow(radius: 3)
            
            Button{
                cartManager.addToCart(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
        
            }
            
        }//end zstack outside
       
           
   // }//end navigation view
        
       
    }//end var body
}//end product card view











struct GroceryItemList_Previews: PreviewProvider {
    static var previews: some View {
        GroceryItemList()
    }
}
