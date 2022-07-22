//
//  SettingsView.swift
//  Fruits (iOS)
//
//  Created by Servislets on 22.07.2022.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack(spacing:20){
                    GroupBox {
                        Divider().padding(.vertical,4)
                        HStack{
                            Image("logo").resizable().scaledToFit().frame(width: 140, height: 140).cornerRadius(15)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholestherol. Fruits are sources of many essencial nurtients, including potassium, dietary fiber, vitamins, and much more.").font(.headline)
                        }
                    } label: {
                       SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
                    }
                    GroupBox {
                        Divider().padding(.vertical,4)
                        SettingsRowView(title: "Developer", description: "Şükran Yorulmaz")
                        SettingsRowView(title: "Designer", description: "Şükran Yorulmaz")
                        SettingsRowView(title: "Compatibility", description: "iOS 15")
                        SettingsRowView(title: "Website", description: "SwiftUI Masterclass")
                        SettingsRowView(title: "Linkedin", description: "sukranyorulmazzz")
                       
                    } label: {
                       SettingsLabelView(labelText: "application", labelImage: "apps.iphone")
                    }

                   
                }.navigationBarTitle(Text("Settings"),displayMode: .large)
                    .navigationBarItems(trailing: Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                    }))
                    
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView().preferredColorScheme(.dark)
    }
}
