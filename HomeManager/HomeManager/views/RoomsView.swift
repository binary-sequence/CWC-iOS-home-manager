//
//  ContentView.swift
//  HomeManager
//
//  Created by Sergio Lindo Mansilla on 10.06.2024.
//

import SwiftUI

struct RoomsView: View {
    @State var rooms = [Room]()
    let icons = [
        "Bathroom": "washer",
        "Bedroom": "bed.double",
        "Kitchen": "refrigerator",
        "Living room": "sofa"
    ]
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    Text("Rooms")
                        .font(.largeTitle)
                        .bold()
                    let columns = [GridItem(), GridItem()]
                    LazyVGrid(columns: columns) {
                        ForEach(rooms) { room in
                            NavigationLink {
                                RoomView(room: room)
                            } label: {
                                VStack {
                                    Text(room.name)
                                        .font(.headline)
                                    Spacer()
                                    Image(systemName: icons[room.name]!)
                                        .font(.largeTitle)
                                    Spacer()
                                }
                            }
                            .padding()
                        }
                    }
                }
            }
        }
        .padding()
        .onAppear {
            self.rooms = DataService().getRooms()
        }
    }
}

#Preview {
    RoomsView()
}
