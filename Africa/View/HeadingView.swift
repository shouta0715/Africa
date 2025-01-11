//
//  HeadingView.swift
//  Africa
//
//  Created by k21047kk on 2025/01/11.
//

import SwiftUI

struct HeadingView: View {
  // MARK: - PROPERTIES
  var headingImage: String
  var headingText: String
  
  // MARK: - BODY
  var body: some View {
    HStack {
      Image(systemName: headingImage)
        .foregroundStyle(Color.accentColor)
        .imageScale(.large)
      
      Text(headingText)
        .font(.title3)
        .fontWeight(.bold)
    }
    .padding(.vertical)
  }
}

#Preview(traits: .sizeThatFitsLayout) {
  HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
    
}
