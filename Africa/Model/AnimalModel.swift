//
//  AnimalModel.swift
//  Africa
//
//  Created by k21047kk on 2025/01/11.
//

import Foundation

struct Animal: Codable, Identifiable {
  var id: String
  var name: String
  var headline: String
  var description: String
  var link: String
  var image: String
  var gallery: [String]
  var fact: [String]
}
