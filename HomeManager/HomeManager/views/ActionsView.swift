//
//  ActionsView.swift
//  HomeManager
//
//  Created by Sergio Lindo Mansilla on 10.06.2024.
//

import SwiftUI

struct ActionsView: View {
    let appliance: Appliance
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Text(appliance.name)
                    .font(.largeTitle)
                    .bold()
                let columns = [GridItem(), GridItem()]
                LazyVGrid(columns: columns) {
                    ForEach(appliance.actions, id: \.self) { action in
                        Button(action) {
                            print("\(appliance.name):\(action)")
                        }
                        .padding()
                        .background(Color(.blue))
                        .clipShape(Capsule())
                        .foregroundStyle(.white)
                        .bold()
                    }
                }
            }
        }
    }
}

#Preview {
    ActionsView(appliance: Appliance(name: "Lamp", actions: ["on", "off"]))
}
