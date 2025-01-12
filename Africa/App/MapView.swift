//
//  MapView.swift
//  Africa
//
//  Created by k21047kk on 2025/01/11.
//

import SwiftUI
import MapKit

struct MapView: View {
  // MARK: - PROPERTIES

  
  let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
  
  
  func openGoogleMap(latitude: Double,longitude: Double ) -> Void {
    let _latitude = String(format: "%.6f", latitude)
    let _longitude = String(format: "%.6f", longitude)

    let urlGoogleMapApp = "comgooglemaps://?center=\(_latitude),\(_longitude)&zoom=14"
    if let url = URL(string: urlGoogleMapApp), UIApplication.shared.canOpenURL(url) {
        UIApplication.shared.open(url)
    } else {
      let urlGoogleMapWeb = "https://www.google.com/maps/@\(_latitude),\(_longitude),14z"
        if let url = URL(string: urlGoogleMapWeb) {
            UIApplication.shared.open(url)
        }
    }
  }

  var body: some View {
    Map {
        ForEach(locations) { item in
          Annotation(item.name, coordinate: item.location) {
            Button {
              openGoogleMap(
                latitude: item.location.latitude,
                longitude: item.location.longitude
              )
            } label: {
              MapAnnotationView(location: item)
            }
          }
        }
      }
  }
}

#Preview {
    MapView()
}
