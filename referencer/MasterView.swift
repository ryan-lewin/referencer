//
//  MasterView.swift
//  referencer
//
//  Created by Ryan Lewin on 15/3/20.
//  Copyright © 2020 Ryan Lewin. All rights reserved.
//

import SwiftUI

struct MasterView: View {
    var colourScheme  = ["Highly Dangerous": "red", "Painful Bite": "yellow", "Low Risk": "green"]
    @ObservedObject var spiderDir: SpiderDirectory
    var body: some View {
        List {
            // Loops through array off spiders stored in SpiderDir
            ForEach(spiderDir.spiders, id: \.name) { spider in
                NavigationLink(destination: SpiderDetailView(spider: spider.self)){
                    HStack() {
                        Image(spider.pic)
                            .resizable()
                            .frame(width: 64.0, height: 64.0)
                        Text(spider.name)
                            .fontWeight(.light)
                        Spacer()
                        Text(spider.dangerLevel)
                            .fontWeight(.bold)
                    }
                }
            }.onDelete { indices in indices.forEach { self.spiderDir.spiders.remove(at: $0) } }
        }
    }
}

