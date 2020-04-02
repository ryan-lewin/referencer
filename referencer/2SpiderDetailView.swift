////
////  SpiderDetailView.swift
////  referencer
////
////  Created by Ryan Lewin on 15/3/20.
////  Copyright © 2020 Ryan Lewin. All rights reserved.
////
//
//import SwiftUI
//
//struct SpiderDetailView: View {
//    @ObservedObject var spider: Spider
//    
//    var body: some View {
//        VStack(alignment: .center) {
//            Text("Notes")
//                .font(.title)
//            TextField("Enter text", text: $spider.note)
//                .border(Color.gray)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//                .padding()
//            spider.getImg(url: spider.picURL)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .padding(.bottom)
//            VStack() {
//                TextField("Enter name", text: $spider.name)
//                    .font(.title)
//                TextField("Enter scientific name", text: $spider.scientificName)
//                    .font(.headline)
//                HStack(alignment: .center) {
//                    Text("Genus:")
//                        .fontWeight(.bold)
//                    TextField("Enter genus", text: $spider.genus)
//                }
//                HStack(alignment: .center) {
//                    Text("Family")
//                        .fontWeight(.bold)
//                    TextField("Enter family", text: $spider.family)
//                }
//                HStack() {
//                    Text("Danger Level")
//                        .fontWeight(.bold)
//                    TextField("Enter danger level", text: $spider.dangerLevel)
//                }
//                HStack() {
//                    Text("Image URL")
//                        .fontWeight(.bold)
//                    TextField("Enter Url", text: $spider.picURL)
//                }
//            }.padding()
//            Spacer()
//        }
//    }
//}
