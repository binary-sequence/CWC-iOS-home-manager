//
//  DataService.swift
//  HomeManager
//
//  Created by Sergio Lindo Mansilla on 10.06.2024.
//

import Foundation

struct DataService {
    func getRooms() -> [Room] {
        if let url = Bundle.main.url(forResource: "rooms", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                do {
                    let rooms = try JSONDecoder().decode([Room].self, from: data)
                    return rooms
                }
                catch {
                    print("Couldn't parse JSON: \(error)")
                }
            }
            catch {
                print("Could't read file: \(error)")
            }
        }

        return [Room]()
    }
}
