//
//  NetrworkManager.swift
//  forSurf
//
//  Created by Максим Япринцев on 08.05.2022.
//

import Foundation

class NetrworkManager {
    
    let sessionConfiguration = URLSessionConfiguration.default
    let decoder = JSONDecoder()
    let session = URLSession.shared
    
    func  getCountry(complition: @escaping([Country]) -> Void, region: String) {
       guard let url = URL(string: "https://restcountries.com/v3.1/region/\(region)") else { return }
        session.dataTask(with: url) { data, response, error in
            if error != nil {
                print("Error \(error!.localizedDescription)")
                return
            }
            if let countryData = data {
                guard let country = try? self.decoder.decode([Country].self, from: countryData) else {
                    return
                }
                complition(country)
                return
                
            }
            return
        }.resume()
        
    }
}
