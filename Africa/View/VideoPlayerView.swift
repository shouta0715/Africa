//
//  VideoPlayerView.swift
//  Africa
//
//  Created by k21047kk on 2025/01/12.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
  // MARK: - PROPERTIES
  let videoSelected: String
  let videoTitle: String
  
  
    var body: some View {
      VStack {
        VideoPlayer(player: playVideo(fileName: videoSelected,fileFormat: "mp4")) {
//          Text(videoTitle)
        }
        .overlay(alignment: .topLeading) {
          Image("logo")
            .resizable()
            .scaledToFit()
            .frame(width: 32, height: 32)
            .padding(.top, 6)
            .padding(.horizontal, 8)
        }
      } //: VStack
      .tint(.accentColor)
      .navigationTitle(videoTitle)
      .navigationBarTitleDisplayMode(.inline)
      
    }
}

#Preview {
  NavigationStack {
    VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
  }
}
