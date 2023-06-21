//
//  RankingView.swift
//  Prefecture
//
//  Created by 加藤巧真 on 2023/05/28.
//

import SwiftUI

struct RankingView: View {
    // MARK: - PROPERTY
    
    var detailData: DetailData
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // RANK Top
                    HStack {
                        Text(detailData.rank)
                        //Rank
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .padding(.horizontal, 20)
                        
                        Spacer()
                        
                        Text(detailData.name)
                        //Name
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        
                        Spacer()
                    } //HSTACK
                    .padding()
                    // RANK BOTTOM
                    
                    
                    
                    // IMAGE TOP
                    Image(detailData.image)
                    //Image
                        .resizable()
                        .scaledToFit()
                    // IMAGE BOTTOM
                    
                    
                    
                    // DESCRIPTION TOP
                    Text(detailData.description)
                    //Description(String)
                        .multilineTextAlignment(.leading)
                        .padding()
                    //DESCRIPTION BOTTOM
                    
                    
                    
                    //PLASE
                    HStack {
                        Image(systemName: "tram.circle")
                            .frame(width: 40, height: 60)
                        
                        Text(detailData.access)
                            .lineLimit(nil)
                            .frame(width: 330, height: 60)
                    }
                    .background(Color.white)
                    .cornerRadius(8)

                    
                    //Address(String)
                    
                    //MAP
                    //Location(Longtitude, Latitude)　MapViewに遷移
                    
                    //ACCESS 車でとか新幹線最寄駅とか
                    HStack {
                        Image(systemName: "map.circle")
                            .padding(.horizontal, 10)
                            .frame(width: 40, height: 60)
                            
                        Text(detailData.address)
                            .lineLimit(nil)
                            .frame(width: 330, height: 60)
                            
                    }
                    .background(Color.white)
                    .cornerRadius(8)
                    
                    //URLから外部サイトに遷移
                    //URL!
                    
                    HStack {
                        Image(systemName: "map.circle")
                            .padding(.horizontal, 10)
                            .frame(width: 40, height: 60)
                            
                        Text(detailData.address)
                            .lineLimit(nil)
                            .frame(width: 330, height: 60)
                            
                    }
                    .background(Color.white)
                    .cornerRadius(8)
                    
                    //
                    
                } // VSTACK

            } // SCROLL
        } // ZSTACK
        .background(BackgroundColor.ignoresSafeArea(.all, edges: .all))
    }
}

struct RankingView_Previews: PreviewProvider {
    static var previews: some View {
        RankingView(detailData: gardenThreeDetailData[0])
    }
}
