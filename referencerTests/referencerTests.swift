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
    
    override func setUp() {
        redback = Spider(
        name: "Redback Spider",
        scientificName: "Latrodectus hasselti",
        species: "hasselti",
        family: "Latrodectus",
        genus: "Theridiidae",
        pic: "redback")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSpiderName() {
        XCTAssertEqual(redback?.name, "Redback Spider")
    }
    
    func testSpiderScientificName() {
        XCTAssertEqual(redback?.scientificName, "Latrodectus hasselti")
    }
    
    func testSpiderSpecies() {
        XCTAssertEqual(redback?.species, "hasselti")
    }
    
    
    func testSpiderFamily() {
        XCTAssertEqual(redback?.family, "Latrodectus")
    }
    
    func testSpiderGenus() {
        XCTAssertEqual(redback?.genus, "Theridiidae")
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
