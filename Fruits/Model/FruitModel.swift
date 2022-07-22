//
//  FruitModel.swift
//  Fruits (iOS)
//
//  Created by Servislets on 22.07.2022.
//

import SwiftUI

struct Fruit: Identifiable {
    var id:String=UUID().uuidString
    var title:String
    var headline:String
    var image:String
    var gradientColors: [String]
    var description:String
    var nutrition:[String]
}
