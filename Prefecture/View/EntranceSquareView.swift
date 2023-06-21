//
//  EntranceSquareView.swift
//  Prefecture
//
//  Created by 加藤巧真 on 2023/05/24.
//

import SwiftUI

struct EntranceSquareView: View {
    // MARK: - PROPERTY
    
    let japan : Japan
    
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
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .frame(width: 150, height: 150)
                .foregroundColor(Color.white)
            
            Image(systemName: japan.image)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .foregroundColor(color(color: japan.color))
            
            VStack {
                Text("日本の")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color.black)
                    .padding(.bottom, 8)
                
                Text(japan.title)
                    .font(.system(size: 50, weight: .bold, design: .default))
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black)
                    .frame(width: 120, height: 20)
                    .padding(.bottom, 9)
            }
        } // ZSTACK
        .cornerRadius(12)
    }
}

struct EntranceSquareView_Previews: PreviewProvider {
    static var previews: some View {
        EntranceSquareView(japan: japan[2])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorGray)
    }
}
