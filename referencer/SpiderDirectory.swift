//
//  SpiderDirectory.swift
//  referencer
//
//  Created by Ryan Lewin on 15/3/20.
//  Copyright © 2020 Ryan Lewin. All rights reserved.
//

// Defines SpiderDirectory including array of Spider types
struct SpiderDirectory {
    var spiders: [Spider] = []
    
    // To add spiders to the directory
    mutating func addSpider(name: String, scientificName: String, family: String, genus: String, dangerLevel: String, pic: String) {
        let spider = Spider(name: name, scientificName: scientificName, family: family, genus: genus, dangerLevel: dangerLevel, pic: pic)
        spiders.append(spider)
    }
    
    // To remove spiders from the directory
    mutating func removeSpider(name: String) {
        spiders.removeAll { $0.name == name }
    }
}

