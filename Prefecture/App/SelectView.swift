//
//  SelectView.swift
//  Prefecture
//
//  Created by 加藤巧真 on 2023/05/28.
//

import SwiftUI

struct SelectView: View {
    // MARK: - PROPERTY
    
    var data: [JapanData]
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(data) { item in
                        NavigationLink(destination:
                                        RankingsView(detailData: item.detailData)) {
                            EntranceView(data: item)
                        }
                    } //ROOP
                } // LIST
            } // VSTACK あとで背景色を変更
        } // NAVI
    }
}

struct SelectView_Previews: PreviewProvider {
    static var previews: some View {
        SelectView(data: gardenData)
            .background(BackgroundColor)
    }
}
