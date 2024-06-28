//
//  VideoModel.swift
//  Africa
//
//  Created by Feruza Yuldasheva on 28/09/23.
//

import Foundation

struct Video: Codable, Identifiable {
    let id : String
    let name : String
    let headline : String
    
    //Computed Properly
    var thumbnail: String{
        "video-\(id)"
    }
}
