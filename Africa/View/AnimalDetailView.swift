//
//  AnimalDetailView.swift
//  Africa
//
//  Created by k21047kk on 2025/01/11.
//

import SwiftUI

struct AnimalDetailView: View {
  let animal: Animal
    var body: some View {
      
      ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 20) {
          Image(animal.image)
            .resizable()
            .scaledToFit()
          
          // Title
          Text(animal.name.uppercased())
            .font(.largeTitle)
            .fontWeight(.heavy)
            .multilineTextAlignment(.center)
            .padding(.vertical, 8)
            .foregroundStyle(.primary)
            .background(
              Color.accentColor
                .frame(height: 6)
                .offset(y: 24)
            )
          
          
          // Headline
          Text(animal.headline)
            .font(.headline)
            .multilineTextAlignment(.leading)
            .foregroundStyle(Color.accentColor)
            .padding(.horizontal)
          
          
          // Gallery
          Group {
            HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
            InsetGalleryView(animal: animal)
          }
          .padding(.horizontal)
          
          
          
          // Facts
          
          // Description
          
          // Map
        }
        .navigationTitle("Learm about \(animal.name)")
      }
    
    }
}

#Preview {
  let animals:[Animal] = Bundle.main.decode("animals.json")
  
  NavigationStack {
    AnimalDetailView(animal: animals[0])
  }
  
}
