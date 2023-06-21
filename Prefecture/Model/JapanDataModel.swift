//
//  JapanDataModel.swift
//  Prefecture
//
//  Created by 加藤巧真 on 2023/05/29.
//

import SwiftUI
import MapKit

struct JapanData: Identifiable {
    var id = UUID()
    var buttonNum: Int
    var buttonTitle: String
    var buttonColor: Color
    var buttonImage: String
    var detailData: [DetailData]
}

struct DetailData: Identifiable {
    var id = UUID()
    var rank: String
    var name: String
    var image: String
    var description: String
    var address: String
    var access: String
    var url: URL?
    
    var latitude: Double
    var longitude: Double

}
