//
//  StartButtonView.swift
//  Fruits (iOS)
//
//  Created by Servislets on 22.07.2022.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("isOnboarding") var isOnboarding:Bool?
    var body: some View {
        Button {
            isOnboarding=false
        } label: {
            RoundedRectangle(cornerRadius: 25).fill(Color.clear).frame(width:100,height: 50)
        }.overlay(RoundedRectangle(cornerRadius: 25).stroke(lineWidth: 2).foregroundColor(.white))
            .overlay(
                HStack{
                    Text("Start").foregroundColor(.white)
                    Image(systemName: "arrow.right.circle").foregroundColor(.white)
                })

    }
}
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView().previewLayout(.sizeThatFits)
    }
}
