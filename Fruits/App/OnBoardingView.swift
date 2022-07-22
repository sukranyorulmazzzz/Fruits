//
//  OnBoardingView.swift
//  Fruits (iOS)
//
//  Created by Servislets on 22.07.2022.
//

import SwiftUI

struct OnBoardingView: View {
    var fruits:[Fruit]=FruitsData
    var body: some View {
        TabView{
            ForEach(fruits){index in
                FruitCardView(fruit: index)
            }
           
        }.tabViewStyle(PageTabViewStyle())
            
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
