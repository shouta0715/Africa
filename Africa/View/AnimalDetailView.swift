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
          Group {
            HeadingView(
              headingImage: "questinmark.circle",
              headingText: "Did you know?"
            )
            
            InsetFactView(animal: animal)
          }
          .padding(.horizontal)
          
          
          // Description
          Group {
            HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
            
            Text(animal.description)
              .multilineTextAlignment(.leading)
              .layoutPriority(1)
          }
          .padding(.horizontal)
          
          // Map
          Group {
            HeadingView(
              headingImage: "map",
              headingText: "National Park"
            )
            
            InsetMapView()
          }
          .padding(.horizontal)
          
          // LINK
          Group {
            HeadingView(
              headingImage: "bools.vertical",
              headingText: "Learn More"
            )
            
            ExternalWeblinkView(animal: animal)
          }
          .padding(.horizontal)
        }
        .navigationTitle("Learm about \(animal.name)")
        .padding(.bottom, 20)
      }

    
    }
}

#Preview {
  let animals:[Animal] = Bundle.main.decode("animals.json")
  
  NavigationStack {
    AnimalDetailView(animal: animals[0])
  }
  
}
