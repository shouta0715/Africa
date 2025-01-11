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
  
    var body: some View {
      NavigationStack {
        List {
          CoverImageView()
            .frame(height: 300)
            .listRowInsets(
              EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
            )
          
          VStack(spacing: 16) {
            ForEach(animals) { animal in
                AnimalListItemView(animal: animal)
            } //: LOOP
          }
          .padding(.vertical, 16)
        } //: LIST
        .navigationTitle("Africa")
      } //: NAVIGATION STACK
    }
}

#Preview {
    ContentView()
}
