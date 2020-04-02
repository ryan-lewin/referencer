//
//  SpiderDirectory.swift
//  referencer
//
//  Created by Ryan Lewin on 15/3/20.
//  Copyright © 2020 Ryan Lewin. All rights reserved.
//

// Defines SpiderDirectory including array of Spider types
import Foundation

class SpiderDirectory: ObservableObject {
    @Published var spiders: [Spider] = []
    
    init(spiders: [Spider] ) {
        self.spiders = []
    }
    
    // To add spiders to the directory
    func addSpider(name: String = "Name", scientificName: String = "Scientific Name", family: String = "Family", genus: String = "Genus", dangerLevel: String = "Danger Level", pic: String = "redback") {
        let spider = Spider(name: name, scientificName: scientificName, family: family, genus: genus, dangerLevel: dangerLevel, pic: pic)
        spiders.append(spider)
    }
    
    // To remove spiders from the directory
    func removeSpider(name: String) {
        spiders.removeAll { $0.name == name }
    }
}

