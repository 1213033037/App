//
//  ContentView.swift
//  Prefecture
//
//  Created by 加藤巧真 on 2023/05/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0){
                            FeaturedTabView()
                                .frame(minHeight: 256)
                                .padding(.vertical, 5)
                        }
                        
                        Group {
                            HStack {
                                NavigationLink(destination:
                                    SelectView(data: areaData)) {
                                    EntranceSquareView(japan: japan[0])
                                }
                                .padding(.horizontal, 10)
                                
                                NavigationLink(destination:
                                    SelectView(data: populationData)) {
                                    EntranceSquareView(japan: japan[1])
                                }
                                .padding(.horizontal, 10)
                            }
                            .padding(.vertical, 10)
                            
                            HStack {
                                NavigationLink(destination:
                                    SelectView(data: riverData)) {
                                    EntranceSquareView(japan: japan[2])
                                }
                                .padding(.horizontal, 10)
                                
                                NavigationLink(destination:
                                    SelectView(data: lakeData)) {
                                    EntranceSquareView(japan: japan[3])
                                }
                                .padding(.horizontal, 10)
                            }
                            .padding(.vertical, 10)
                            
                            HStack {
                                NavigationLink(destination:
                                    SelectView(data: mountainData)) {
                                    EntranceSquareView(japan: japan[4])
                                }
                                .padding(.horizontal, 10)
                                
                                NavigationLink(destination:
                                    SelectView(data: castleData)) {
                                    EntranceSquareView(japan: japan[5])
                                }
                                .padding(.horizontal, 10)
                            }
                            .padding(.vertical, 10)
                            
                            HStack {
                                NavigationLink(destination:
                                    SelectView(data: spaData)) {
                                    EntranceSquareView(japan: japan[6])
                                }
                                .padding(.horizontal, 10)
                                
                                NavigationLink(destination:
                                    SelectView(data: gardenData)) {
                                    EntranceSquareView(japan: japan[7])
                                }
                                .padding(.horizontal, 10)
                            }
                            .padding(.vertical, 10)
                            
                            HStack {
                                NavigationLink(destination:
                                    SelectView(data: mountainData)) {
                                    EntranceSquareView(japan: japan[8])
                                }
                                .padding(.horizontal, 10)
                                
                            }
                            .padding(.vertical, 10)

                        }
                        
                    })
                } // VSTACK
                .background(BackgroundColor.ignoresSafeArea(.all, edges: .all))
            } //ZSTACK
            //.ignoresSafeArea(.all, edges: .top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
