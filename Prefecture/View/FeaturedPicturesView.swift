//
//  FeaturedPicturesView.swift
//  Prefecture
//
//  Created by 加藤巧真 on 2023/05/24.
//

import SwiftUI

struct FeaturedPicturesView: View {
    // MARK: - PROPERTY
    
    let featured: Featured
    
    // MARK: - BODY
    var body: some View {
        Image(featured.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedPicturesView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedPicturesView(featured: featureds[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(BackgroundColor)
    }
}
