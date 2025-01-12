//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by k21047kk on 2025/01/13.
//

import SwiftUI

struct AnimalGridItemView: View {
  // MARK: - PROPERTIES
  let animal: Animal
  
  // MARK: - BODY
    var body: some View {
      Image(animal.image)
        .resizable()
        .scaledToFit()
        .clipShape(RoundedRectangle(cornerRadius: 12))
        
    }
}

#Preview(traits: .sizeThatFitsLayout) {
  let animals: [Animal] = Bundle.main.decode("animals.json")
    AnimalGridItemView(animal: animals[0])
    .padding()
}
