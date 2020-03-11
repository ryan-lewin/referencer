//
//  ContentView.swift
//  referencer
//
//  Created by Ryan Lewin on 10/3/20.
//  Copyright © 2020 Ryan Lewin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let redback: Spider
    var body: some View {
        VStack(alignment: .center) {
            Image("\(redback.pic)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom)
            Divider()
            Text("\(redback.name)")
                .font(.title)
            Text("\(redback.scientificName)")
                .font(.headline)
                .fontWeight(.light)
            Divider()
            VStack(alignment: .leading ,spacing: 10) {
                HStack() {
                    Text("Species:")
                        .fontWeight(.bold)
                    Text("\(redback.species)")
                }
                HStack() {
                    Text("Genus:")
                        .fontWeight(.bold)
                    Text("\(redback.genus)")
                }
                HStack() {
                    Text("Family")
                        .fontWeight(.bold)
                    Text("\(redback.family)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(redback: Spider(
        name: "Redback Spider",
        scientificName: "Latrodectus hasselti",
        species: "hasselti",
        family: "Latrodectus",
        genus: "Theridiidae",
        pic: "redback"))
    }
}
