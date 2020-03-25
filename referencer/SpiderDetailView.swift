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
    @State var note: String = ""
    var body: some View {

        VStack() {
            Text("Notes")
//            TextField("Enter text", text: $note)
//                .border(Color.black)
//                .padding()
//            ForEach(0..<spider.notes.count) { i in
//                Text(self.spider.notes[i].content)
//            }
//            List {
//                ForEach(0..<spider.notes.count) { i in
//                    Text(self.spider.notes[i].content)
//                }
//            }
//            Spacer()
            Image("\(spider.pic)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom)
//            Divider()
            Text("\(spider.name)")
                .font(.title)
            Text("\(spider.scientificName)")
                .font(.headline)
                .fontWeight(.light)
//            Divider()
            VStack(alignment: .leading ,spacing: 10) {
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
