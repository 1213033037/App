//
//  EntranceView.swift
//  Prefecture
//
//  Created by 加藤巧真 on 2023/05/24.
//

import SwiftUI

struct EntranceView: View {
    // MARK: PROPERTY
    
    let data: JapanData
    
    // MARK: - FUNC

    func color(color: Int) -> Color {
        switch color {
        case 1:
            return Color.blue
        case 2:
            return Color.green
        case 3:
            return Color.indigo
        case 4:
            return Color.mint
        case 5:
            return Color.cyan
        default:
            return Color.gray
        }
    }
    
    // MARK: BODY
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(systemName: data.buttonImage)
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90)
                .foregroundColor(data.buttonColor)
            
            
            VStack {
                Text(data.buttonTitle)
                    .font(.largeTitle)
                    .fontWeight(.black)
                
                if data.buttonNum == 1 {
                    Text("ランキング")
                        .font(.largeTitle)
                        .fontWeight(.black)
                }
                if data.buttonNum == 2 {
                }
            }
            
                /*
                Text("日本の川の長さ、流域面積、")
                    .font(.footnote)
                    .fontWeight(.semibold)
                 */
        }
    }
}

struct EntranceView_Previews: PreviewProvider {
    static var previews: some View {
        EntranceView(data: riverData[0])
            .previewLayout(.fixed(width: 100, height: 100))
            .padding()
            .background(colorGray)
    }
}
