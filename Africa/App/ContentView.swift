//
//  ContentView.swift
//  Africa
//
//  Created by k21047kk on 2025/01/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      NavigationStack {
        List {
          CoverImageView()
            .frame(height: 300)
            .listRowInsets(
              EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
            )
        } //: LIST
        .navigationTitle("Africa")
      } //: NAVIGATION STACK
    }
}

#Preview {
    ContentView()
}
