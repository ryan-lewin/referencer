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

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSpider() {
        let redback = Spider(
        name: "Redback Spider",
        scientificName: "Latrodectus hasselti",
        species: "hasselti",
        family: "Latrodectus",
        genus: "Theridiidae")
        
        XCTAssertEqual(redback.name, "Redback Spider")
        XCTAssertEqual(redback.scientificName, "Latrodectus hasselti")
        XCTAssertEqual(redback.species, "hasselti")
        XCTAssertEqual(redback.family, "Latrodectus")
        XCTAssertEqual(redback.genus, "Theridiidae")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
