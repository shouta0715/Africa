//
//  InsetFactView.swift
//  Africa
//
//  Created by k21047kk on 2025/01/11.
//

import SwiftUI

struct InsetFactView: View {
  // MARK: - PROPERTIES
  
  let animal: Animal
    var body: some View {
      GroupBox {
        TabView {
          ForEach(animal.fact, id: \.self) { item in
            Text(item)
          }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
      } //: BOX
    }
}

#Preview(traits: .sizeThatFitsLayout) {
  let animals: [Animal] = Bundle.main.decode("animals.json")
    InsetFactView(animal: animals[0])
    .padding()
}
