//
//  ContentView.swift
//  Shared
//
//  Created by Servislets on 22.07.2022.
//

import SwiftUI

struct ContentView: View {
    var fruits:[Fruit]=FruitsData
    @State private var isShowingSettings:Bool = false
    var body: some View {
        
        NavigationView{
                List{
                    ForEach(fruits.shuffled()){ item in
                        NavigationLink {
                            DetailView(fruit: item)
                        } label: {
                            FruitRowView(fruit: item).padding(6)
                        }

                      
                    }
                }.listStyle(.plain)
                .navigationTitle("Fruits")
                .navigationBarItems(trailing: Button(action: {
                    isShowingSettings=true
                }, label: {
                    Image(systemName:"slider.horizontal.3")
                })).sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
        }
    }
        
        
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
