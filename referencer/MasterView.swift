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
    var spiderDir: SpiderDirectory
    var body: some View {
        List {
            ForEach(0..<spiderDir.spiders.count) { i in
                NavigationLink(destination: SpiderDetailView(spider: self.spiderDir.spiders[i])){
                    HStack() {
                        Image(self.spiderDir.spiders[i].pic)
                            .resizable()
                            .frame(width: 64.0, height: 64.0)
                        Spacer()
                        Text(self.spiderDir.spiders[i].name)
                            .fontWeight(.bold)
                        Spacer()
                        Text(self.spiderDir.spiders[i].dangerLevel)
                            .fontWeight(.light)
                            .foregroundColor(Color.green)
                    }
                }
            }
        }
    }
}
