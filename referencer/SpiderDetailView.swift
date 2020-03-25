//
//  SpiderDetailView.swift
//  referencer
//
//  Created by Ryan Lewin on 15/3/20.
//  Copyright © 2020 Ryan Lewin. All rights reserved.
//

import SwiftUI

struct SpiderDetailView: View {
    @State var spider: Spider
    
    var body: some View {
        VStack() {
            Text("Notes")
                .font(.title)
            TextField("Enter text", text: $spider.note)
                .border(Color.gray)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Image("\(spider.pic)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom)
            Text("\(spider.name)")
                .font(.title)
            Text("\(spider.scientificName)")
                .font(.headline)
                .fontWeight(.light)
            HStack() {
                Text("Genus:")
                    .fontWeight(.bold)
                Text("\(spider.genus)")
            }
            HStack() {
                Text("Family")
                    .fontWeight(.bold)
                Text("\(spider.family)")
            }
            HStack() {
                Text("Danger Level")
                    .fontWeight(.bold)
                Text("\(spider.dangerLevel)")
            }
            Spacer()
        }
    }
}
