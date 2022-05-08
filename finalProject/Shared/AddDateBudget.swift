//
//  AddDateBudget.swift
//  finalProject
//
//  Created by yingying Chen on 5/3/22.
//




































////old code working below
//import SwiftUI
////
//struct AddDateBudget: View {
//    @State private var date: String = ""
//    @State private var budget: String = ""
//
//    var body: some View {
//    //    NavigationView {
//        Form {
//            Section(header: Text("Add Date and Budget")) {
//                //get input from user for date
//                DataInput(title: "Date", userInput: $date)
//                //get input from user for budget
//                DataInput(title: "Budget", userInput: $budget)
//                //convert budget from string to double
//                var floatBudget = Float(budget)
//
//            }
//            NavigationLink("Next", destination: Shopping())
//       }
//
// //   }//end navigation view
//    }
//}
//
//struct DataInput: View {
//    var title: String
//    @Binding var userInput: String
//
//    var body: some View {
//        VStack(alignment: HorizontalAlignment.leading) {
//            Text(title)
//                .font(.headline)
//            //text field for user input
//            TextField("Enter \(title)", text: $userInput)
//                        .textFieldStyle(RoundedBorderTextFieldStyle())
//        }
//        .padding()
//
//
//
//        }
//    }
//
//
//
//
//
//
//struct AddDateBudget_Previews: PreviewProvider {
//    static var previews: some View {
//        AddDateBudget()
//    }
//}
