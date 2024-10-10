//
//  ListenNowPage.swift
//  chapter-7-6
//
//  Created by Learn Swift  on 1/6/2567 BE.
//

import SwiftUI

struct ListenNowPage: View {
    
    @State private var showSongList: Bool = false
    
    let recentPlays: [Color] = [Color.green, Color.orange, Color.blue, Color.pink]
    let newSongs: [Color] = [Color.red, Color.purple, Color.green, Color.yellow]
    
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Recently Play")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.leading)
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(recentPlays, id: \.self) { item in
                                    RoundedRectangle(cornerRadius: 12)
                                        .frame(width: 160, height: 160)
                                        .foregroundStyle(item)
                                        .onTapGesture {
                                            showSongList = true
                                        }
                                }
                            }
                            .padding(.leading, 20)
                        }
                        .scrollIndicators(.hidden)
                    }
                    .padding(.bottom)
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("New Songs For You")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.leading)
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(newSongs, id: \.self) { item in
                                    RoundedRectangle(cornerRadius: 12)
                                        .frame(width: 160, height: 160)
                                        .foregroundStyle(item)
                                        .onTapGesture {
                                            showSongList = true
                                        }
                                }
                            }
                            .padding(.leading, 20)
                        }
                        .scrollIndicators(.hidden)
                    }
                }
                .padding(.top, 20)
            }
            .navigationTitle("Listen Now")
            .navigationDestination(isPresented: $showSongList) {
                SongListPage()
            }
        }
    }
    
}
