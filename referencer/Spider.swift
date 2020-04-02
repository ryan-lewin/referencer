//
//  Spider.swift
//  referencer
// Defines one spider species
//  Created by Ryan Lewin on 10/3/20.
//  Copyright © 2020 Ryan Lewin. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

// Defines one spider species - spider is an observable object
class Spider: ObservableObject, Identifiable {
    var id = UUID()
    // Name common value assigned to spider
    @Published var name: String
    @Published var scientificName: String
    @Published var family: String
    @Published var genus: String
    //
    @Published var dangerLevel: String
    
    //note var is in published prop wrapper si UI watches for changes
    @Published var note: String = ""
    
    // string contains image location
    @Published var picURL: String = ""
    var imageCache = Dictionary<String, Image>()
    var pic : Image

    init(name: String, scientificName: String, family: String, genus: String, dangerLevel: String, picURL: String) {
        self.name = name
        self.scientificName = scientificName
        self.family = family
        self.genus = genus
        self.dangerLevel = dangerLevel
        self.picURL = picURL
        self.pic = imageCache[picURL] ?? Image("placeholder")
    }
    
}

extension Spider {
    func getImg(url: String) -> Image{
        if self.pic == imageCache[url] {
            return self.pic
        }
        
        guard let imgURL = URL(string: self.picURL),
        let imgData = try? Data(contentsOf: imgURL),
        let uiImg = UIImage(data: imgData) else {
            return Image("placeholder")
        }
        
        let  downloadedImg = Image(uiImage: uiImg)
        imageCache[url] = downloadedImg
        print(self.imageCache.count)
        return downloadedImg
        
    }
}

