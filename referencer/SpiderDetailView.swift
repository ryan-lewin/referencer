//
//  SpiderDetailView.swift
//  referencer
//
//  Created by Ryan Lewin on 15/3/20.
//  Copyright © 2020 Ryan Lewin. All rights reserved.
//

import SwiftUI

struct SpiderDetailView: View {
    let spider: Spider
    var body: some View {
        VStack(alignment: .center) {
            Image("\(spider.pic)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom)
            Divider()
            Text("\(spider.name)")
                .font(.title)
            Text("\(spider.scientificName)")
                .font(.headline)
                .fontWeight(.light)
            Divider()
            VStack(alignment: .leading ,spacing: 10) {
                HStack() {
                    Text("Species:")
                        .fontWeight(.bold)
                    Text("\(spider.species)")
                }
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
            }
        }
    }
}
