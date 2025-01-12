//
//  VideoModel.swift
//  Africa
//
//  Created by k21047kk on 2025/01/12.
//

import Foundation

struct Video: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  
  // Computed Property
  
  var thumbnail: String {
    "video-\(id)"
  }
}
