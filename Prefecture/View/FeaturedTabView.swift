//
//  FeaturedTabView.swift
//  Prefecture
//
//  Created by 加藤巧真 on 2023/05/24.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(featureds.shuffled()) { feature in
                FeaturedPicturesView(featured: feature)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }// TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(Color.gray)
    }
}
