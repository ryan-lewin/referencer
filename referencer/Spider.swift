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
    @Published var picURL: String

    init(name: String, scientificName: String, family: String, genus: String, dangerLevel: String, picURL: String) {
        self.name = name
        self.scientificName = scientificName
        self.family = family
        self.genus = genus
        self.dangerLevel = dangerLevel
        self.picURL = picURL
    }
}

extension Spider {
    func getImg(imgURL: String) -> Image{
        guard let imgURL = URL(string: self.picURL) else {
            return Image("placeholder")
        }
        
        guard let imgData = try? Data(contentsOf: imgURL) else {
            return Image("placeholder")
        }
        
        guard let uiImg = UIImage(data: imgData) else {
            return Image("placeholder")
        }
        
        let  downloadedImg = Image(uiImage: uiImg)
        
        return downloadedImg
    }
}

