//
//  SpiderRowView.swift
//  referencer
//
//  Created by Ryan Lewin on 2/4/20.
//  Copyright © 2020 Ryan Lewin. All rights reserved.
//

import SwiftUI

struct SpiderRowView: View {
    @ObservedObject var spider: Spider
    
    var body: some View {
        NavigationLink(destination: SpiderDetailView(spider: spider.self )){
            HStack() {
//                Image(spider.pic)
//                spider.img
                spider.getImg(imgURL: spider.picURL)
                    .resizable()
                    .frame(width: 64.0, height: 64.0)
                Text(spider.name)
                    .fontWeight(.light)
                Spacer()
                Text(spider.dangerLevel)
                    .fontWeight(.bold)
            }
        }
    }
}

