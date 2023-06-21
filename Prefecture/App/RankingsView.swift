//
//  RankingsView.swift
//  Prefecture
//
//  Created by 加藤巧真 on 2023/06/14.
//

import SwiftUI

struct RankingsView: View {
    // MARK: - PROPERTY
    
    var detailData: [DetailData]
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    ForEach(detailData) { data in
                        RankingView(detailData: data)
                        
                    }
                } // VSTACK
            } // SCROLL
        } // ZSTACK
        .background(BackgroundColor)
    }
}

struct RankingsView_Previews: PreviewProvider {
    static var previews: some View {
        RankingsView(detailData: riverLengthDetailData)
    }
}
