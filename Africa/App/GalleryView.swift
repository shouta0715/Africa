//
//  GalleryView.swift
//  Africa
//
//  Created by k21047kk on 2025/01/11.
//

import SwiftUI

struct GalleryView: View {
  // MARK: - PROPERTIES
  
  @State private var selectedAnimal: String = "lion"
  
  let animals: [Animal] = Bundle.main.decode("animals.json")
  
  let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
  
  @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
  @State private var gridColumn: Double = 3.0
  
  func gridSwitch() {
    gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
  }
  
  // MARK: - BODY
    var body: some View {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .center, spacing: 30) {
          // MARK: - IMAGE
          Image(selectedAnimal)
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay {
              Circle()
                .stroke(Color.white, lineWidth: 8)
            }
          
          // MARK: - SLIDER
          Slider(value: $gridColumn, in: 2...4, step: 1)
            .padding(.horizontal)
            .onChange(of: gridColumn) { oldValue, newValue in
              withAnimation(.easeInOut(duration: 0.5)) {
                gridSwitch()
              }
            }
          
          // MARK: - GRID
          LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
            ForEach(animals) { item in
              Image(item.image)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay {
                  Circle()
                    .stroke(Color.white, lineWidth: 1)
                }
                .onTapGesture {
                  withAnimation(.easeOut(duration: 0.25)) {
                    selectedAnimal = item.image
                    hapticImpact.impactOccurred()
                  }
                }
            } //: LOOP
          } //: GRID
          .onAppear {
            gridSwitch()
          }
        } //: VSTACK
        .padding(.horizontal, 10)
        .padding(.vertical, 50)
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .background(MotionAnimationView())
    }
}

#Preview {
    GalleryView()
}
