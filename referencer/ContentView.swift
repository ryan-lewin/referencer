//
//  ContentView.swift
//  referencer
//
//  Created by Ryan Lewin on 10/3/20.
//  Copyright © 2020 Ryan Lewin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Redback Spider")
                .font(.title)
            Text("Latrodectus hasselti")
                .font(.headline)
                .fontWeight(.light)
            HStack() {
                Text("Size Range:")
                Text("1 cm (female); 3 mm - 4 mm (male)")
            }
            HStack() {
                Text("Habitats:")
                Text("peridomestic, pest")
            }
            HStack() {
                Text("Feeding Habits")
                Text("carnivorous, insectivorous, predator")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
