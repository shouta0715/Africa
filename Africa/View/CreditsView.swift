//
//  CreditsView.swift
//  Africa
//
//  Created by k21047kk on 2025/01/13.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
      VStack {
        Image("compass")
          .resizable()
          .scaledToFit()
          .frame(width: 128, height: 128)
        
        
        Text("""
              Copy right 2021 k21047kk
              All right reserved
              Better Apps ♡ Less Code
          """)
        .font(.footnote)
        .multilineTextAlignment(.center)
      } //: VSTACK
      .padding()
      .opacity(0.4)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CreditsView()
    .padding()
}
