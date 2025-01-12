//
//  ContentView.swift
//  Africa
//
//  Created by k21047kk on 2025/01/11.
//

import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTIES
  let animals: [Animal] = Bundle.main.decode("animals.json")
  
  let haptics = UIImpactFeedbackGenerator(style: .medium)
  
  @State private var isGridViewActive: Bool = false
  
  @State private var gridLayout: [GridItem] = [
    GridItem(.flexible()),
    GridItem(.flexible())
  ]
  
  @State private var gridColumn: Int = 1
  @State private var toolbarIcon: String = "square.grid.2x2"
  
  // MARK: - FUNCTION
  func updateToolbarIcon() {
    switch gridColumn {
      case 1:
        toolbarIcon = "square.grid.2x2"
      case 2:
        toolbarIcon = "square.grid.3x2"
      case 3:
        toolbarIcon = "rectangle.grid.1x2"
      default:
        toolbarIcon = "square.grid.2x2"
    }
  }
  
  func gridSwitch() {
    let newGridColumn = gridColumn % 3 + 1
    gridLayout = Array(repeating: .init(.flexible()), count: newGridColumn)
    gridColumn = newGridColumn
    
    updateToolbarIcon()
  }
  
  // MARK: - BODY
    var body: some View {
      NavigationStack {
        Group {
          if !isGridViewActive {
            List {
              CoverImageView()
                .frame(height: 300)
                .listRowInsets(
                  EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
                )
                .padding(.bottom, 10)
              
              ForEach(animals) { animal in
                NavigationLink(
                  destination: AnimalDetailView(animal: animal)
                ) {
                  AnimalListItemView(animal: animal)
                } //LINK
              } //: LOOP
              
              CreditsView()
                .modifier(CenterModifier())
              
            } //: LIST
          } else {
            ScrollView(.vertical, showsIndicators: false) {
              LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                ForEach(animals) { animal in
                  NavigationLink(destination: AnimalDetailView(animal: animal)) {
                    AnimalGridItemView(animal: animal)
                  } //: LINK
                } //: LOOP
              } //: GRID
              .padding(10)
            } //: SCROLL
          } //: CONDITION
        } //: GROUP
        .navigationTitle("Africa")
        .toolbar {
          ToolbarItem(placement: .navigationBarTrailing) {
            HStack(spacing: 8) {
              
              // LIST
              Button {
                isGridViewActive = false
                haptics.impactOccurred()
              } label: {
                Image(systemName: "square.fill.text.grid.1x2")
                  .imageScale(.large)
                  .foregroundStyle(
                    isGridViewActive ? Color.primary : Color.accentColor
                  )
              }
              
              // GRID
              Button {
                isGridViewActive = true
                haptics.impactOccurred()
                withAnimation(.easeInOut(duration: 0.3)) {
                  gridSwitch()
                }
              } label: {
                Image(systemName: toolbarIcon)
                  .imageScale(.large)
                  .foregroundStyle(
                    isGridViewActive ? Color.accentColor : Color.primary
                  )
              }

            } //: HSTACK
          }
        } //: TOOLBAR
      } //: NAVIGATION STACK
    }
}

#Preview {
    ContentView()
}
