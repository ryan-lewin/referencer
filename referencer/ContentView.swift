//
//  ContentView.swift
//  referencer
//
//  Created by Ryan Lewin on 10/3/20.
//  Copyright © 2020 Ryan Lewin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var spiderDir: SpiderDirectory
    var body: some View {
        NavigationView {
            MasterView(spiderDir: spiderDir)
            .navigationBarTitle("Spiders")
        }
    }
}

struct MasterView: View {
    var spiderDir: SpiderDirectory
    var body: some View {
        List {
            ForEach(0..<spiderDir.spiders.count) { i in
                NavigationLink(destination: SpiderDetailView(spider: self.spiderDir.spiders[i])){
                    Text(self.spiderDir.spiders[i].name)
                }
            }
        }
    }
}

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
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(spiderDir: SpiderDirectory())
    }
}
