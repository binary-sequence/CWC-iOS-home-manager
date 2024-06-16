//
//  Room.swift
//  HomeManager
//
//  Created by Sergio Lindo Mansilla on 10.06.2024.
//

import Foundation

struct Room: Identifiable, Decodable {
    let id = UUID()
    let name: String
    let appliances: [Appliance]
    
    enum CodingKeys: String, CodingKey {
        case name
        case appliances
    }
}
