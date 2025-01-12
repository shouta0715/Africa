//
//  VideoListView.swift
//  Africa
//
//  Created by k21047kk on 2025/01/11.
//

import SwiftUI

struct VideoListView: View {
  // MARK: - PROPERTIES
  
  @State private var videos: [Video] = Bundle.main.decode("videos.json")
  
  let hapticsFeedback = UIImpactFeedbackGenerator(style: .medium)
  
    var body: some View {
      NavigationStack {
        List {
          ForEach(videos) { video in
            VideoListItemView(video: video)
              .padding(.vertical, 8)
          } //: LOOP
        } //: LIST
        .listStyle(InsetGroupedListStyle())
        .navigationTitle("Videos")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
          ToolbarItem(placement: .navigationBarTrailing) {
            Button {
              videos.shuffle()
              hapticsFeedback.impactOccurred()
            } label: {
              Image(systemName: "arrow.2.squarepath")
            }
          }
        }
      } //: NAVIGATION STACK
    }
}

#Preview {
    VideoListView()
}
