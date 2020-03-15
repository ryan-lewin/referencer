//
//  MasterView.swift
//  referencer
//
//  Created by Ryan Lewin on 15/3/20.
//  Copyright © 2020 Ryan Lewin. All rights reserved.
//

import SwiftUI

struct MasterView: View {
    var spiderDir: SpiderDirectory
    var body: some View {
        List {
            ForEach(0..<spiderDir.spiders.count) { i in
                NavigationLink(destination: SpiderDetailView(spider: self.spiderDir.spiders[i])){
                    HStack() {
                        Image(self.spiderDir.spiders[i].pic)
                            .resizable()
                            .frame(width: 96, height: 96)
                        Spacer()
                        Text(self.spiderDir.spiders[i].name)
                            .fontWeight(.bold)
                        Spacer()
                        Text(self.spiderDir.spiders[i].dangerLevel)
                            .fontWeight(.light)
                            .foregroundColor(Color.red)
                    }
                }
            }
        }
    }
}
