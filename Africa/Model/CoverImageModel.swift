//
//  CoverImageModel.swift
//  Africa
//
//  Created by Feruza Yuldasheva on 27/09/23.
//
//encoding json file

import SwiftUI
//codable and identifiable are protocols
struct CoverImage: Codable, Identifiable{
    let id: Int
    let name: String
}
