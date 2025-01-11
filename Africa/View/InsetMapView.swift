//
//  InsetMapView.swift
//  Africa
//
//  Created by k21047kk on 2025/01/11.
//

import SwiftUI
import MapKit



struct InsetMapView: View {
  // MARK: - PROPERTIES
  @State private var region = MKCoordinateRegion(
    center:CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.437759),
    span: MKCoordinateSpan(
      latitudeDelta: 0.0,
      longitudeDelta: 0.0
    )
  )
    
  
  // MARK: - BODY
    var body: some View {
      Map(bounds: MapCameraBounds(centerCoordinateBounds: region))
        .overlay(alignment: .topTrailing) {
        NavigationLink(destination: MapView()) {
          HStack {
            Image(systemName: "mappin.circle")
              .foregroundStyle(Color.white)
              .imageScale(.large)
            
            Text("Locations")
              .foregroundStyle(Color.accentColor)
              .fontWeight(.bold)
          } //: HSTACK
          .padding(.vertical, 10)
          .padding(.horizontal, 14)
          .background(
            Color.black
              .opacity(0.4)
              .clipShape(RoundedRectangle(cornerRadius: 8))
          )
        }
        .padding(12)
      }
      .mapStyle(.imagery())
      .frame(height: 256)
      .clipShape(RoundedRectangle(cornerRadius: 12))
        
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    InsetMapView()
    .padding()
}
