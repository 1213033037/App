//
//  SettingsRowView.swift
//  Prefecture
//
//  Created by 加藤巧真 on 2023/05/26.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: PROPERTIES
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: BODY
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                        .font(.system(size: 18, design: .rounded))
                        .foregroundColor(Color.black)
                } else if (linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                  else {
                    EmptyView()
                }
            } // HSTACK
        } // VSTACK
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "Takuma Kato")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}

