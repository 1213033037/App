//
//  SettingsLabelView.swift
//  Prefecture
//
//  Created by 加藤巧真 on 2023/05/26.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: PROPERTIES
    
    var labelText: String
    var labelImage: String
    
    // MARK: BODY
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Prefecture", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
