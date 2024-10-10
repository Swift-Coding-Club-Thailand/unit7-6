//
//  SongListPage.swift
//  chapter-7-6
//
//  Created by Learn Swift  on 1/6/2567 BE.
//

import SwiftUI

struct Song: Identifiable {
    var id: UUID = UUID()
    var name: String
}

struct SongListPage: View {
    
    var songs: [Song] = [Song(name: "Song A"), Song(name: "Song B"), Song(name: "Song C"), Song(name: "Song D"), Song(name: "Song E")]
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(height: 200)
                .foregroundStyle(.green)
            List(songs) { song in
                HStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 50, height: 50)
                        .foregroundStyle(.black.opacity(0.1))
                    
                    Text(song.name)
                }
            }
            .listStyle(.plain)
        }
        .ignoresSafeArea()
    }
    
}
