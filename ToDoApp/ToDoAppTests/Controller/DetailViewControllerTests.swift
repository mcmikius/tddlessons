//
//  DetailViewControllerTests.swift
//  ToDoAppTests
//
//  Created by Michail Bondarenko on 3/12/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import XCTest
@testable import ToDoApp

class DetailViewControllerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testHasTitleLabel() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: String(describing: DetailViewController.self)) as! DetailViewController
    }

}
