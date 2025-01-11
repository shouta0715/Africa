//
//  CoverImageView.swift
//  Africa
//
//  Created by k21047kk on 2025/01/11.
//

import SwiftUI

struct CoverImageView: View {
  // MARK: - PROPERTIES
  let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
  
  // MARK: - BODY
    var body: some View {
      TabView {
        
        ForEach(coverImages) { cover in
          Image(cover.name)
            .resizable()
            .scaledToFill()
        } //: LOOP
      } //: TAB
      .tabViewStyle(PageTabViewStyle())
        
    }
}

#Preview(traits: .fixedLayout(width: 400, height: 300)) {
    CoverImageView()
}
