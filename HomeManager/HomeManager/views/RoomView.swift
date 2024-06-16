//
//  RoomView.swift
//  HomeManager
//
//  Created by Sergio Lindo Mansilla on 10.06.2024.
//

import SwiftUI

struct RoomView: View {
    let room: Room
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Text(room.name)
                    .font(.largeTitle)
                    .bold()
                let columns = [GridItem(), GridItem()]
                LazyVGrid(columns: columns) {
                    ForEach(room.appliances) { appliance in
                        NavigationLink {
                            ActionsView(appliance: appliance)
                        } label: {
                            VStack {
                                Text(appliance.name)
                                    .font(.headline)
                                Spacer()
                                Image(appliance.name)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 150)
                                Spacer()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    RoomView(
        room:
            Room(
                name: "Bathroom",
                appliances: [
                    Appliance(name: "Lamp", actions: ["on", "off"]),
                    Appliance(name: "Washer", actions: ["short wash", "long wash"])
                ]
            )
    )
}
