//
//  AddNewFood.swift
//  Preferable simulator: iphone 11
//  Yuki_Chen_final_project
//  Created by yingying Chen on 5/2/22.
//

import SwiftUI







struct AddNewFood: View {
  @StateObject var foodStore : FoodStore
  @State private var name: String = ""
  @State private var description: String = ""
    @State private var price: Float = 0.00
    //this view is for adding new food items with the name and description for the food
    var body: some View {
        Form {
            Section(header: Text("Add Food Item")) {
                //get input from user for food item name
                DataInput(title: "Dish Name", userInput: $name)
                //get input from user for food item description
                DataInput(title: "Description", userInput: $description)
                
            }
            //button for adding food to the list view
            Button(action: addNewFood) {
                Text("Add Food")
            }
       }
     }
    //add new food function to add a new food with assigned ID, and name and description from user input
    func addNewFood() {
            let newFood = Food(id: UUID().uuidString,
                //use a general food image for adding new food
                               name: name, description: description, price: price,imageName: "food2"
                          )
        //add the newly added food to the list of all foods
            foodStore.foods.append(newFood)
        }
    
    
}
    
struct AddNewFood_Previews: PreviewProvider {
  static var previews: some View {
AddNewFood(foodStore: FoodStore(foods: foodData))
      
  }
}

