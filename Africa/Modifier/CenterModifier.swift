//
//  CenterModifier.swift
//  Africa
//
//  Created by k21047kk on 2025/01/13.
//

import SwiftUI

struct CenterModifier: ViewModifier {
  func body(content: Content) -> some View {
    HStack {
      Spacer()
      content
      Spacer()
    }
  }
}
