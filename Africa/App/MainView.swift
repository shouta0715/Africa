//
//  MainView.swift
//  Africa
//
//  Created by k21047kk on 2025/01/11.
//

import SwiftUI

struct MainView: View {
    var body: some View {
      TabView {
        Tab("Browse",systemImage: "square.grid.2x2") {
          ContentView()
        }
        
        Tab("Watch",systemImage: "play.rectangle") {
          VideoListView()
        }
        
        Tab("Map",systemImage: "map") {
          MapView()
        }
        
        Tab("Gallery",systemImage: "photo") {
          GalleryView()
        }
      } //: TabView
    }
}

#Preview {
    MainView()
}
