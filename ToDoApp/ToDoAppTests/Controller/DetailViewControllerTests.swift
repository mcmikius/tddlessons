//
//  DetailViewControllerTests.swift
//  ToDoAppTests
//
//  Created by Michail Bondarenko on 3/12/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import XCTest
import CoreLocation
@testable import ToDoApp

class DetailViewControllerTests: XCTestCase {
    
    var sut: DetailViewController!

    override func setUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: String(describing: DetailViewController.self)) as? DetailViewController
        sut.loadViewIfNeeded()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testHasTitleLabel() {
        
        
        XCTAssertNotNil(sut.titleLabel)
        XCTAssertNotNil(sut.titleLabel.isDescendant(of: sut.view))
    }
    
    func testHasDescriptionLabel() {
        
        XCTAssertNotNil(sut.descriptionLabel)
        XCTAssertNotNil(sut.descriptionLabel.isDescendant(of: sut.view))
    }
    
    func testHasDateLabel() {
        
        XCTAssertNotNil(sut.dateLabel)
        XCTAssertNotNil(sut.dateLabel.isDescendant(of: sut.view))
    }
    
    func testHasMapView() {
        
        XCTAssertNotNil(sut.mapView)
        XCTAssertNotNil(sut.mapView.isDescendant(of: sut.view))
    }
    
    func testHasLocationLabel() {
        
        XCTAssertNotNil(sut.locationLabel)
        XCTAssertNotNil(sut.locationLabel.isDescendant(of: sut.view))
    }
    
    func setupTaskAndAppearanceTransition() {
        let ccordinate = CLLocationCoordinate2D(latitude: 50.4020865, longitude: 30.61468031)
        let location = Location(name: "Baz", coordinate: ccordinate)
        let date = Date(timeIntervalSince1970: 1552392000)
        let task = Task(title: "Foo", description: "Bar", date: date, location: location)
        sut.task = task
        
        sut.beginAppearanceTransition(true, animated: true)
        sut.endAppearanceTransition()
    }
    
    
    func testSettingTaskSetsTitleLabel() {
        setupTaskAndAppearanceTransition()
        XCTAssertEqual(sut.titleLabel.text, "Foo")
    }
    
    func testSettingTaskSetsDescriptionLabel() {
        setupTaskAndAppearanceTransition()
        XCTAssertEqual(sut.descriptionLabel.text, "Bar")
    }
    
    func testSettingTaskSetsLocationLabel() {
        setupTaskAndAppearanceTransition()
        XCTAssertEqual(sut.locationLabel.text, "Baz")
    }
    
    func testSettingTaskSetsDateLabel() {
        setupTaskAndAppearanceTransition()
        XCTAssertEqual(sut.dateLabel.text, "12.03.19")
    }
    
    func testSettingTaskSetsMapView() {
        setupTaskAndAppearanceTransition()
        XCTAssertEqual(sut.mapView.centerCoordinate.latitude, 50.4020865, accuracy: 0.001)
        XCTAssertEqual(sut.mapView.centerCoordinate.longitude, 30.61468031, accuracy: 0.001)
    }

}
