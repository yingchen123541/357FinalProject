//
//  ProductCard.swift
//  finalProject (iOS)
//
//  Created by yingying Chen on 5/8/22.
//

import SwiftUI

//struct ProductCard: View {
//    @EnvironmentObject var cartManager: CartManager
//    var product: Product
//
//    var body: some View {
//     //   NavigationView {
//
//
//
//
//
//        ZStack(alignment: .topTrailing){
//            ZStack(alignment: .bottom){
//
//
//                Image(product.image)
//                    .resizable()
//                    .cornerRadius(20)
//                    .frame(width: 180)
//                    .scaledToFit()
//
//                VStack(alignment: .leading){
//                    Text(product.name)
//                        .bold()
//
//                    Text("$\(product.price)")
//                        .font(.caption)
//
////                    NavigationLink(destination: ProductDetail(selectedProduct: product)){
////                        Text("details")
////                            .font(.largeTitle)
////                    }//end navigation link
//
//                }
//                .padding()
//                .frame(width: 100, alignment: .leading)
//                .background(.ultraThinMaterial)
//                .cornerRadius(20)
//
//
//
//            }//end inside zstack
//            .frame(width: 180, height: 250)
//            .shadow(radius: 3)
//
//            Button{
//                cartManager.addToCart(product: product)
//            } label: {
//                Image(systemName: "plus")
//                    .padding(10)
//                    .foregroundColor(.white)
//                    .background(.black)
//                    .cornerRadius(50)
//                    .padding()
//
//            }
//
//        }//end zstack outside
//
//
//
//
//
//
//
//   // }//end navigation view
//
//
//
//
//
//
//
//
//
//    }//end var body
//}//end product card view








//struct ProductCard_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductCard(product: productList[0])
//            .environmentObject(CartManager())
//    }
//}
