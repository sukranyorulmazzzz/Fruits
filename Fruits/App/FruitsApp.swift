//
//  FruitsApp.swift
//  Shared
//
//  Created by Servislets on 22.07.2022.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding:Bool=true
    var body: some Scene {
        WindowGroup {
            if(isOnboarding){
                OnBoardingView()
            }
            else{
                ContentView()
            }
           
        }
    }
}
