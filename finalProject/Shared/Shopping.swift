//
//  Shopping.swift
//  finalProject
//
//  Created by yingying Chen on 5/2/22.
//  Preferable simulator: iphone 11


import SwiftUI

struct Shopping: View {
    //declare state object that can be changed
    @StateObject private var foodStore : FoodStore = FoodStore(foods: foodData)
    
    var body: some View {
    NavigationView {
        //a list of all the food items
      List {
         ForEach (foodStore.foods) { food in
             ListCell(food: food)
      }
          //functions for moving and deleting food items
         .onDelete(perform: deleteItems)
         .onMove(perform: moveItems)
    }
      .navigationBarTitle(Text("Food Dishes"))
      .navigationBarItems(leading: NavigationLink(destination: AddNewFood(foodStore: self.foodStore)) {
          //connect the add view with the food list view
          Text("Add")
              .foregroundColor(.blue)
      }, trailing: EditButton())
     }
    }
    //function for deleting a food on the list
    func deleteItems(at offsets: IndexSet) {
        foodStore.foods.remove(atOffsets: offsets)
    }
    //function for moving a food on the list
    func moveItems(from source: IndexSet, to destination: Int) { foodStore.foods.move(fromOffsets: source, toOffset: destination)
    }
    
}

struct Shopping_Previews: PreviewProvider {
    static var previews: some View {
        Shopping()
    }
}




struct ListCell: View {
    var food: Food
    var body: some View {
        //connect food dishes to the detail view for each food item
        NavigationLink(destination: FoodDetail(selectedFood: food)) {
        HStack {
            Image(food.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 60)
            Text(food.name)
        }
    }
}
}


