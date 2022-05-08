//
//  ContentView.swift
//  Preferable simulator: iphone 11
//  Yuki_Chen_final_project
//  Created by yingying Chen on 5/2/22.
//


import SwiftUI

struct ContentView: View {
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
                    
                    Text("$\(product.price)")
                        .font(.caption)
                    
                    NavigationLink(destination: ProductDetail(selectedProduct: product)){
                        Text("details")
                            .font(.caption2)
                    }//end navigation link
                
                }
                .padding()
                .frame(width: 100, alignment: .leading)
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






struct ContentView_Previews:
    PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





















////old code working below
//import SwiftUI
//
//struct ContentView: View {
//    @State private var selection = 1
//    @State var date = "12/05/2022"
//    @State var budget = "0.0"
//
//
//    var body: some View {
//        //use together with NavigationLink to go to new scene
//        NavigationView {
//
//        TabView(selection: $selection) {
//
//        VStack{ //vertical stack
//            Text("Grocery Planning App")
//                .fontWeight(.bold)
//                .font(.largeTitle)
//            Image("groceryStore")
//            Spacer()
//            Text("--- Plan ahead, and make your shopping trip less chaotic")
//                .fontWeight(.bold)
//                .font(.title2)
//            Spacer()
//            //specify destination, go to input scene to add date and budget
//            ZStack{
//                Circle()
//                    .stroke(Color.black)
//                    .frame(width: 107, height: 107)
//                NavigationLink("Start Planning", destination: AddDateBudget())
//            }
//
//        }.tabItem {
//            Text("Welcome Page")
//        }.tag(1)
//
//        VStack(alignment:.leading, spacing: 4){
//            Text("Help")
//                .font(.largeTitle)
//                .bold()
//
//            Text("Customer Support: 714-733-4568 ")
//                .font(.caption)
//                .bold()
//            Text("Email: plangrocery234@gmail.com")
//                .font(.caption)
//                .bold()
//
//            Text("This is a grocery planning app in which the user can note the shopping date and add grocery items to shopping cart and get a total price of all the grocery items at the end.")
//                .padding(20)
//
//            Text("By using this app, users will know how much the grocery shopping trip will cost, and adjust item quantities beforehand, and come up with a final shopping list before entering the grocery store.")
//                .padding(20)
//
//            Text("The prices in this app are how much items usually cost, prices could be different depends on which grocery store the user ends up going to.")
//                .padding(20)
//            } //end vstack
//        .tabItem {
//            Text("Help")
//        }.tag(2)
//
//    }//end big tag
//
//  }//end navigation view
//
//
//    }
//  }//end content view
//
//
//struct ContentView_Previews:
//    PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//
