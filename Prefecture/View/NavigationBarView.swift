//
//  NavigationBarView.swift
//  Prefecture
//
//  Created by 加藤巧真 on 2023/05/24.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - PROPERTIES
    
    @State private var isAnimated: Bool = false
    @State private var isShowingInfoView: Bool = false
    @State private var isShowingSettingsView: Bool = false
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button(action: { isShowingInfoView = true}, label: {
                Image(systemName: "info.bubble")
                    .font(.title)
                    .foregroundColor(.black)
            })
            .sheet(isPresented: $isShowingInfoView) {
                InfoView()
            }
            
            Spacer()
            
            Button(action: {}, label: {
                Text("HOME")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color.black)
            })
            
            Spacer()
            
            //TitleViewを入れる予定
            Button(action: { isShowingSettingsView = true},
                   label: {
                ZStack {
                    Image(systemName: "gearshape")
                        .font(.title)
                        .foregroundColor(.black)
                    
                    /*Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                     */
                }
                .sheet(isPresented: $isShowingSettingsView) {
                    SettingsView()
                }
            }) //BUTTON
        }// HSTACK
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
