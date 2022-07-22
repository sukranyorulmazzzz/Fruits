//
//  SettingsLabelView.swift
//  Fruits (iOS)
//
//  Created by Servislets on 22.07.2022.
//

import SwiftUI

struct SettingsLabelView: View {
    var labelText:String
    var labelImage:String
    var body: some View {
        HStack{
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName:labelImage)
        }.padding()
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "işvhjghijş", labelImage: "info.circle")
    }
}
