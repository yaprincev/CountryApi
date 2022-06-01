//
//  Country.swift
//  forSurf
//
//  Created by Максим Япринцев on 08.05.2022.
//

import Foundation
struct Country: Codable {
    
   struct Name: Codable {
       let common: String
      let official: String
   }
    
    struct Car: Codable {
        let signs: [String]
        let side: String
    }
    
    let name: Name
    let car: Car
    
    let timezones: [String]
    let status: String
    let region: String
    let subregion: String
    let population: Int
    let area: Float
    let landlocked: Bool
    let flag: String
    let startOfWeek: String
    
}
