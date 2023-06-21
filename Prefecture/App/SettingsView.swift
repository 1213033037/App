//
//  SettingsView.swift
//  Prefecture
//
//  Created by 加藤巧真 on 2023/05/25.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTY
    
    @Environment(\.presentationMode) var presentationMode2
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // SECTION 1 設定変更
                    
                    // SECTION 2　開発データ
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "情報", labelImage: "info.circle")
                    ){
                        SettingsRowView(name: "開発者", content: "加藤　巧真")
                        SettingsRowView(name: "iOSバージョン", content: "iOS 16.4.1")
                        SettingsRowView(name: "開発バージョン", content: "Version 1.2.1")
                        SettingsRowView(name: "開発バージョン", content: "iOS 16.4.1")
                        
                    }
                } // VSTACK
                .navigationBarTitle(Text("設定"), displayMode: .large)
                .navigationBarItems(
                    trailing: Button(action: {
                        presentationMode2.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                    })
                .padding()
            } //SCROLL
        } // NAVI
    }
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
