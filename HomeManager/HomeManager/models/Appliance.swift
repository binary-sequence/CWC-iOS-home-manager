//
//  Appliance.swift
//  HomeManager
//
//  Created by Sergio Lindo Mansilla on 10.06.2024.
//

import Foundation

struct Appliance: Identifiable, Decodable {
    let id = UUID()
    let name: String
    let actions: [String]
    
    enum CodingKeys: String, CodingKey {
        case name
        case actions
    }
}
