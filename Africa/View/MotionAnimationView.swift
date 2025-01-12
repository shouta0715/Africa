//
//  MotionAnimationView.swift
//  Africa
//
//  Created by k21047kk on 2025/01/13.
//

import SwiftUI

struct MotionAnimationView: View {
  
  // MARK: - PROPERTIES
  @State private var randomCircle = Int.random(in: 12...16)
  @State private var isAnimating: Bool = false
  
  // MARK: - FUNCTIONS
  
  func randomCoordinate(max: CGFloat) -> CGFloat {
    return CGFloat.random(in: 0...max)
  }
  
  func randomSize() -> CGFloat {
    return CGFloat.random(in: 10...300)
  }
  
  func randomScale() -> CGFloat {
    return CGFloat(Double.random(in: 0.1...2.0))
  }
  
  func randomSpeed() -> Double {
    return Double.random(in: 0.025...1.0)
  }
  
  func randomDelay()-> CGFloat {
    return Double.random(in: 0...2)
  }
  
  
    var body: some View {
      GeometryReader { geometory in
        ZStack {
          ForEach(0...randomCircle, id: \.self) { item in
            Circle()
              .foregroundStyle(.gray)
              .opacity(0.15)
              .frame(width: randomSize(), height: randomSize(),alignment: .center)
              .position(
                x: randomCoordinate(max: geometory.size.width),
                y: randomCoordinate(max: geometory.size.height)
              )
              .scaleEffect(isAnimating ? randomScale() : 1)
              
          } //: LOOP
        } //: ZSTACK
        .onAppear {
          withAnimation(
            Animation
              .interpolatingSpring(stiffness: 0.5, damping: 0.5)
              .repeatForever(autoreverses: false)
              .speed(randomSpeed())
              .delay(randomDelay())
          ) {
            isAnimating = true
          }
        }
        .drawingGroup()
      } //: GeometryReader
    }
}

#Preview {
    MotionAnimationView()
}
