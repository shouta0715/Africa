//
//  VideoListItem.swift
//  Africa
//
//  Created by k21047kk on 2025/01/12.
//

import SwiftUI

struct VideoListItemView: View {
  let video: Video
    var body: some View {
      HStack {
        ZStack {
          Image(video.thumbnail)
            .resizable()
            .scaledToFit()
            .frame(height: 80)
            .clipShape(RoundedRectangle(cornerRadius: 9))
          
          Image(systemName: "play.circle")
            .resizable()
            .scaledToFit()
            .frame(height: 32)
            .shadow(radius: 4)
        } //: Zstack
        
        VStack(alignment: .leading, spacing: 10) {
          Text(video.name)
            .font(.title2)
            .fontWeight(.heavy)
            .foregroundStyle(Color.accentColor)
          
          Text(video.headline)
            .font(.footnote)
            .multilineTextAlignment(.leading)
            .lineLimit(2)
          
        } //: VStack
      } //: Hstack
        
    }
}

#Preview(traits: .sizeThatFitsLayout) {
  let video:[Video] = Bundle.main.decode("videos.json")
    VideoListItemView(video: video[0])
    .padding()
  
}
