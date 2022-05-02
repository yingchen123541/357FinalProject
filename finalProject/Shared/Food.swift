//
//  Food.swift
//  Preferable simulator: iphone 11
//  Yuki_Chen_Project2
//  Created by yingying Chen on 4/3/22.
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

