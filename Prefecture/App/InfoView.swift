//
//  InfoView.swift
//  Prefecture
//
//  Created by 加藤巧真 on 2023/05/25.
//

import SwiftUI

struct InfoView: View {
    // MARK: - PROPERTY
    
    @Environment(\.presentationMode) var presentationMode1
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {

                    
                    Text("M")
                } // VSTACK
                .navigationBarTitle(Text("Info"), displayMode: .large)
                .navigationBarItems(
                    trailing: Button(action: {
                        presentationMode1.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                    })
                .padding()
            } //SCROLL
        } // NAVI
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
