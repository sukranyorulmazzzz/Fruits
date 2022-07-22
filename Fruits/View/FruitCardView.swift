//
//  FruitCardView.swift
//  Fruits (iOS)
//
//  Created by Servislets on 22.07.2022.
//

import SwiftUI

struct FruitCardView: View {
    var fruit:Fruit
    @State var isAnimated:Bool=false

    var body: some View {
      
        ZStack{
            VStack(spacing: 20){
                Image(fruit.image).resizable().scaledToFit()
                    .shadow(color:.black.opacity(0.4), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimated ? 1.0 : 0.6)
                Text(fruit.title).foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black, radius: 2, x: 2, y: 2)
                Text(fruit.headline).foregroundColor(.white).padding(16)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth:480)
                StartButtonView()
                
            }
        }.onAppear(){
            withAnimation(.easeOut(duration: 0.5)){
                isAnimated=true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color(fruit.gradientColors[0]),Color(fruit.gradientColors[1])]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(30)
            .padding(.horizontal, 20)
         
    }
}
//MARK: -Preview
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: FruitsData[2]).previewLayout(.fixed(width: 320, height: 640))
    }
}
