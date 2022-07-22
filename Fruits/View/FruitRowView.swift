//
//  FruitRowView.swift
//  Fruits (iOS)
//
//  Created by Servislets on 22.07.2022.
//

import SwiftUI

struct FruitRowView: View {
    var fruit:Fruit
    var body: some View {
        HStack{
            Image(fruit.image).resizable().scaledToFit().frame(width: 80, height: 80, alignment: .center)
                .shadow(color: .black.opacity(0.5), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: [Color(fruit.gradientColors[0]),Color(fruit.gradientColors[1])]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(8)
            VStack(alignment:.leading,spacing:5){
                Text(fruit.title).font(.title).fontWeight(.heavy)
                Text(fruit.headline).font(.caption).foregroundColor(Color.secondary)
            }
        }
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: FruitsData[1]).previewLayout(.sizeThatFits)
            .padding()
    }
}
