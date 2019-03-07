//
//  LocationTests.swift
//  ToDoAppTests
//
//  Created by Michail Bondarenko on 3/7/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import XCTest
import CoreLocation
@testable import ToDoApp


class LocationTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testInitSetsName() {
        let location = Location(name: "Foo")
        XCTAssertEqual(location.name, "Foo")
    }

    func testInitSetsCoordinates() {
        let coordinate = CLLocationCoordinate2D(latitude: 1, longitude: 2)
        let location = Location(name: "Foo", coordinate: coordinate)
        XCTAssertEqual(location.coordinate?.latitude, location.coordinate?.latitude)
        XCTAssertEqual(location.coordinate?.longitude, location.coordinate?.longitude)
    }

}
