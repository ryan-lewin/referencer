//
//  referencerTests.swift
//  referencerTests
//
//  Created by Ryan Lewin on 10/3/20.
//  Copyright © 2020 Ryan Lewin. All rights reserved.
//

import XCTest
@testable import referencer

class referencerTests: XCTestCase {
    var redback: Spider?
    var spiderDir = SpiderDirectory()
    
    override func setUp() {
        
        spiderDir.addSpider(
            name: "Funnel Web",
            scientificName: "Atrax robustus",
            family: "Hexathelidae",
            genus: "Atrax",
            dangerLevel: "Highly Dangerous",
            pic: "funnelweb")
        
        redback = Spider(
            name: "Redback Spider",
            scientificName: "Latrodectus hasselti",
            family: "Latrodectus",
            genus: "Theridiidae",
            dangerLevel: "Highly Dangerous",
            pic: "redback")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testSpiderDirAddSpider() {
        spiderDir.addSpider(
            name: "Redback Spider",
            scientificName: "Latrodectus hasselti",
            family: "Latrodectus",
            genus: "Theridiidae",
            dangerLevel: "Highly Dangerous",
            pic: "redback"
        )
        let spiderExists = spiderDir.spiders.contains { spider in
            if case spider.name = "Redback Spider" {
                return true
            } else {
                return false
            }
        }
        XCTAssertTrue(spiderExists)
    }
    
    func testSpiderDirRemoveSpider() {
        spiderDir.removeSpider(name: "FunnelWeb")
        let spiderExists = spiderDir.spiders.contains { spider in
            if case spider.name = "Redback Spider" {
                return true
            } else {
                return false
            }
        }
        XCTAssertFalse(spiderExists)
    }

    func testSpiderName() {
        XCTAssertEqual(redback?.name, "Redback Spider")
    }
    
    func testSpiderScientificName() {
        XCTAssertEqual(redback?.scientificName, "Latrodectus hasselti")
    }
    
    func testSpiderFamily() {
        XCTAssertEqual(redback?.family, "Latrodectus")
    }
    
    func testSpiderGenus() {
        XCTAssertEqual(redback?.genus, "Theridiidae")
    }
    
    func testSpiderDangerLevel() {
        XCTAssertEqual(redback?.dangerLevel, "Highly Dangerous")
    }
    
    func testSpiderPic() {
         XCTAssertEqual(redback?.pic, "redback")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
