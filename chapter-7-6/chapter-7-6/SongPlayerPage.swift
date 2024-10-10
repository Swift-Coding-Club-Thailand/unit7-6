//
//  SongPlayerPage.swift
//  chapter-7-6
//
//  Created by Learn Swift  on 1/6/2567 BE.
//

import SwiftUI

struct SongPlayerPage: View {
    
    var selectedSong: Song?
    
    var body: some View {
        ZStack {
            Color.gray
            VStack {
                Text("Playing \(selectedSong?.name ?? "") 🎸")
                    .foregroundStyle(.white)
                Button("Close") {
                    
                }
                .frame(width: 80, height: 40)
                .foregroundStyle(.white)
                .background(.blue)
                .clipShape(.capsule)
            }
        }
        .ignoresSafeArea()
    }
    
}
