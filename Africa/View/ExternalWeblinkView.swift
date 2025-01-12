//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by k21047kk on 2025/01/11.
//

import SwiftUI

struct ExternalWeblinkView: View {
  // MARK: - PROPERTIES
  
  let animal: Animal
  
    var body: some View {
      Group {
        HStack {
          Image(systemName: "globe")
          Text("Wikipedia")
          Spacer()
          
          Group {
            Image(systemName: "arrow.up.right.square")
            
            Link(animal.name, destination: URL(string: animal.link)!)
          }
          .foregroundStyle(Color.accentColor)
        } //: HStack
      } //: Box
    }
}

#Preview(traits: .sizeThatFitsLayout) {
  let animals: [Animal] = Bundle.main.decode("animals.json")
  
    ExternalWeblinkView(animal: animals[0])
    .padding()
}
