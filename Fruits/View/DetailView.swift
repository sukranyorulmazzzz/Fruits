//
//  DetailView.swift
//  Fruits (iOS)
//
//  Created by Servislets on 22.07.2022.
//

import SwiftUI

struct DetailView: View {
    let fruit:Fruit
    var body: some View {
        ZStack{
            ScrollView{
            VStack{
                Image(fruit.image).resizable().scaledToFit().frame(width: .infinity, height: 500, alignment: .center)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(fruit.gradientColors[0]),Color(fruit.gradientColors[1])]), startPoint: .leading, endPoint: .trailing))
                    .shadow(color: .black.opacity(0.5), radius: 6, x: 5, y: 5)
                Spacer()
              
                HStack{
                    Text(fruit.title).font(.system(size: 50)).fontWeight(.heavy).foregroundColor(Color(fruit.gradientColors[1])).shadow(color: .black.opacity(0.5), radius: 5, x: 2, y: 2)
                    Spacer()
                }.padding(.horizontal)
                Text(fruit.headline).font(.system(size: 20)).fontWeight(.bold).frame(maxWidth:410)
                NutritionView(fruit: fruit)
                HStack{
                    Text("Learn More About \(fruit.title)").font(.system(size: 25)).fontWeight(.bold).foregroundColor(Color(fruit.gradientColors[0])).shadow(color: Color(fruit.gradientColors[1]).opacity(0.3), radius: 5, x: 2, y: 2)
                    Spacer()
                }.padding()
                Text(fruit.description).font(.system(size: 20)).fontWeight(.regular).frame(maxWidth:410)
                    
                
              
                
            }
        }
        }.edgesIgnoringSafeArea(.top)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(fruit: FruitsData[0])
    }
}
