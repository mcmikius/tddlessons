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
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInitSetsName() {
        let location = Location(name: "Foo")
        XCTAssertEqual(location.name, "Foo")
    }
    
    func testInitSetsCoordinates() {
        let coordinate = CLLocationCoordinate2D(
            latitude: 1,
            longitude: 2
        )
        let location = Location(name: "Foo",
                                coordinate: coordinate)
        XCTAssertEqual(location.coordinate?.latitude, coordinate.latitude)
        XCTAssertEqual(location.coordinate?.longitude, coordinate.longitude)
    }
    
    func testCanBeCreatedFromPlistDictionary() {
        let location = Location(name: "Foo", coordinate: CLLocationCoordinate2D(latitude: 10.0,
                                                                                longitude: 10.0))
        let dictionary: [String : Any] = ["name" : "Foo",
                                    "latitude" : 10.0,
                                    "longitude" : 10.0]
        
        let createdLocation = Location(dictionary: dictionary)
        
        XCTAssertEqual(location, createdLocation)
    }
    
    func testCanBeSerializedIntoDictionary() {
        let location = Location(name: "Foo", coordinate: CLLocationCoordinate2D(latitude: 10.0,
                                                                                longitude: 10.0))
        let generatedLocation = Location(dictionary: location.dictionary)
        
        XCTAssertEqual(location, generatedLocation)
    }
}
