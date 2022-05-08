//
//  ProductDetail.swift
//  finalProject (iOS)
//
//  Created by yingying Chen on 5/8/22.
//

import SwiftUI

struct ProductDetail: View {
    


    let selectedProduct: Product
    var body: some View {

        //this is the grocery item view with item name and description
        VStack{
          Text("grocery item details")
          Divider()
            //larger font for the food name
            Group{
          Text(selectedProduct.name)
                .font(.custom("Copperplate",size:30))
          
            }//end group
          Image(selectedProduct.image)
                .resizable()
                .cornerRadius(12.0).aspectRatio(contentMode: .fit)
                .padding()
          Group{
          Text("Description: ")
            .font(.system(size: 20))
          Text(selectedProduct.description)
            .font(.system(size: 35))
            Spacer()


          Text("Price: ")
            .font(.system(size: 20))
          Text("$\(selectedProduct.price)")
            .font(.system(size: 35))
            Spacer()
          }//end group

        }//end vstack

    }
}

struct ProductDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetail(selectedProduct: productList[0])
       
    }
}
