//
//  LocationModel.swift
//  Africa
//
//  Created by Feruza Yuldasheva on 28/09/23.
//

import Foundation
import MapKit

struct NaitionaParkLocations: Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    //Computed Properly
    var location: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
