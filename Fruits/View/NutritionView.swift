//
//  NutritionView.swift
//  Fruits (iOS)
//
//  Created by Servislets on 22.07.2022.
//

import SwiftUI

struct NutritionView: View {
    var fruit:Fruit
    let nutrients: [String]=["Energy","Sugar","Fat","Protein","Vitamins","Minerals"]
    var body: some View {
        DisclosureGroup {
            ForEach(0..<nutrients.count, id:\.self){item in
                HStack{
                    Image(systemName: "info.circle").foregroundColor(Color(fruit.gradientColors[1]))
                    Text(nutrients[item]).padding().foregroundColor(Color(fruit.gradientColors[1]))
                    Spacer()
                    Text(fruit.nutrition[item]).padding()
                }.padding(.horizontal)
              
            }
        } label: {
            Rectangle().fill(Color.clear).frame(width: 300, height: 90, alignment: .center).overlay(
                
                Text("Nutritional value per 100g").font(.headline).foregroundColor(Color(fruit.gradientColors[1]))
            )
           
        }.accentColor(Color.pink)
        .background(RoundedRectangle(cornerRadius: 20).fill(Color(fruit.gradientColors[0]).opacity(0.4))).frame(width:400 )

    }
}

struct NutritionView_Previews: PreviewProvider {
    static var previews: some View {
        NutritionView(fruit: FruitsData[4])
    }
}
