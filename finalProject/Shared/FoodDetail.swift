//
//  FoodDetail.swift
//  Preferable simulator: iphone 11
//  Yuki_Chen_final_project
//  Created by yingying Chen on 5/2/22.
//

import SwiftUI

struct FoodDetail: View {
    //state variable to keep track of how many likes the food dish gets
    //if people like this dish can give it a like by clicking the "like" button
    @State var like: Int = 0
    
    let selectedFood: Food
    var body: some View {
        //this is the food item view with food name and description
        VStack{
          Text("grocery item details")
          Divider()
            //larger font for the food name
          Text(selectedFood.name)
                .font(.custom("Copperplate",size:30))
            //display how many likes this food dish has
          Text("like: \(like)")
                .font(.custom("Copperplate",size:30))
          Spacer()
          Image(selectedFood.imageName)
                .resizable()
                .cornerRadius(12.0).aspectRatio(contentMode: .fit)
                .padding()
            
          Text("Description: ")
            .font(.system(size: 20))
          Text(selectedFood.description)
            .font(.system(size: 35))
            Spacer()
            //button for liking this dish, user can click this button if they like the dish
            Button(
                action:{self.like = like + 1},
                label:{Text("like")
                        .font(.system(size: 40))
                }
            )
            
        }
        
    }
}

struct FoodDetail_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetail(selectedFood: foodData[0])
    }
}

