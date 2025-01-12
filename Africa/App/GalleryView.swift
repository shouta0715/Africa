//
//  GalleryView.swift
//  Africa
//
//  Created by k21047kk on 2025/01/11.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
      ScrollView(.vertical, showsIndicators: false) {
        Text("Gallery")
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .background(MotionAnimationView())
    }
}

#Preview {
    GalleryView()
}
