//
//  ContentView.swift
//  Preferable simulator: iphone 11
//  Yuki_Chen_final_project
//  Created by yingying Chen on 5/2/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1
    
    var body: some View {
        TabView(selection: $selection) {
        VStack{ //vertical stack
            Text("Grocery Planning App")
                .fontWeight(.bold)
                .font(.largeTitle)
            Image("groceryStore")
            Spacer()
            Text("--- Plan ahead, and make your shopping trip less chaotic")
                .fontWeight(.bold)
                .font(.largeTitle)
            ZStack{
                Circle()
                    .stroke(lineWidth: 15)
                    .foregroundColor(.black)
                    .frame(width: 120, height: 120)
                Button("start planning"){
                   //go to the shopping page to add items to cart
                    //add code below
                    
                }
            }
        }.tabItem {
            Text("Welcome Page")
        }.tag(1)
            
         
            Spacer()
        
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Help")
                        .font(.largeTitle)
                        .bold()
                    
                    Text("Customer Support: 714-733-4568 ")
                        .font(.caption)
                        .bold()
                    Text("Email: plangrocery234@gmail.com")
                        .font(.caption)
                        .bold()
                    //Spacer()
                    
                    Text("This is a grocery planning app in which the user can note the shopping date and add grocery items to shopping cart and get a total price of all the grocery items at the end.")
                        .padding(70)
                    
                    //Spacer()
                    
                    Text("By using this app, users will know how much the grocery shopping trip will cost, and adjust item quantities beforehand, and come up with a final shopping list before entering the grocery store.")
                        .padding(70)
                    //Spacer()
                    
                    Text("The prices in this app are how much items usually cost, prices could be different depends on which grocery store the user ends up going to.")
                        .padding(70)
                    
                    
                }
                .tabItem {
                    Text("Help")
                }.tag(2)
                
            }//end big tag
            
            
    }
  }
    
//end content view









    //declare state object that can be changed
//    @StateObject private var foodStore : FoodStore = FoodStore(foods: foodData)
    
//    var body: some View {
//    NavigationView {
//        //a list of all the food items
//      List {
//         ForEach (foodStore.foods) { food in
//             ListCell(food: food)
//      }
//          //functions for moving and deleting food items
//         .onDelete(perform: deleteItems)
//         .onMove(perform: moveItems)
//    }
//      .navigationBarTitle(Text("Food Dishes"))
//      .navigationBarItems(leading: NavigationLink(destination: AddNewFood(foodStore: self.foodStore)) {
//          //connect the add view with the food list view
//          Text("Add")
//              .foregroundColor(.blue)
//      }, trailing: EditButton())
//     }
//    }
//    //function for deleting a food on the list
//    func deleteItems(at offsets: IndexSet) {
//        foodStore.foods.remove(atOffsets: offsets)
//    }
//    //function for moving a food on the list
//    func moveItems(from source: IndexSet, to destination: Int) { foodStore.foods.move(fromOffsets: source, toOffset: destination)
//    }
    
//}

struct ContentView_Previews:
    PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//struct ListCell: View {
//    var food: Food
//    var body: some View {
//        //connect food dishes to the detail view for each food item
//        NavigationLink(destination: FoodDetail(selectedFood: food)) {
//        HStack {
//            Image(food.imageName)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 100, height: 60)
//            Text(food.name)
//        }
//    }
//}
//}

