//
//  InsetGalleryView.swift
//  Africa
//
//  Created by k21047kk on 2025/01/11.
//

import SwiftUI

struct InsetGalleryView: View {
  // MARK: - PROPERTIES
  let animal: Animal
  
  // MARK: - BODY
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack {
        ForEach(animal.gallery, id: \.self) { item in
          Image(item)
            .resizable()
            .scaledToFit()
            .frame(height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 12))
        }
      } //: HSTACK
    } //: SCROLL
  }
}

#Preview(traits: .sizeThatFitsLayout) {
  let animals: [Animal] = Bundle.main.decode("animals.json")
  
    InsetGalleryView(animal: animals[0])
    .padding()
}
