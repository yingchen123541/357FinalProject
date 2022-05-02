//
//  Food.swift
//  Preferable simulator: iphone 11
//  Yuki_Chen_final_project
//  Created by yingying Chen on 5/2/22.
//

import Foundation

import SwiftUI
struct Food : Codable, Identifiable {
    //include the variables declared in the json file
    var id: String
    var name: String
    var description: String
    var imageName: String
}

