//
//  SettingsRowView.swift
//  Fruits (iOS)
//
//  Created by Servislets on 22.07.2022.
//

import SwiftUI

struct SettingsRowView: View {
    var title:String
    var description:String
    var body: some View {
        HStack{
           Text(title)
            Spacer()
            Text(description)
        }.padding()
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(title: "igfhjglh", description: "ifglhif")
    }
}
