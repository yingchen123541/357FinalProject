//
//  FoodData.swift
//  Preferable simulator: iphone 11
//  Yuki_Chen_final_project
//  Created by yingying Chen on 5/2/22.
//

import Foundation

import UIKit
import SwiftUI
//get data on food dishes from the json file
var foodData: [Food] = loadJson("foodData.json")
func loadJson<T: Decodable>(_ filename: String) -> T {
let data: Data
    
guard let file = Bundle.main.url(forResource: filename, withExtension: nil)

    else{
        //error handling for json file not found
        fatalError("\(filename) not found.")
    }
    
    do {
        data = try Data(contentsOf: file) }
    catch {
        fatalError("Could not load \(filename): \(error)")
    }
    
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Unable to parse \(filename): \(error)")
    }
    
}

