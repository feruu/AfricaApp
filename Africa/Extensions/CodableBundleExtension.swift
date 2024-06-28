//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Feruza Yuldasheva on 27/09/23.
//

import Foundation

extension Bundle{
    func decode< T: Codable >(_ file: String) -> T {
        //1 step : locate the json file
        guard let url = self.url(forResource: file, withExtension: nil)
        else{fatalError("Failed to locate \(file) in bundle.")}
        //2 step : create a property for a data
        guard let  data = try? Data(contentsOf: url) else { fatalError("Failed to load \(file) from bundle.")}
        //3 step : create a decoder
        let decoder = JSONDecoder()
        //4 step : create a property for the decoder data
        guard let loaded = try? decoder.decode(T.self, from: data) else { fatalError("Failed to decode \(file) from bundle")}
        //5 step : return ready-to-use
        return loaded
    }
}
