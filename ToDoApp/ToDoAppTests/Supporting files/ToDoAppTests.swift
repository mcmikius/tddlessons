//
//  ToDoAppTests.swift
//  ToDoAppTests
//
//  Created by Michail Bondarenko on 3/6/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import XCTest
@testable import ToDoApp

class ToDoAppTests: XCTestCase {
    
    var sut: TaskListViewController!

    override func setUp() {
        super.setUp()
        
        
//        sut.loadViewIfNeeded()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testInitialViewControllerIsTaskListViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let navigationController = storyboard.instantiateInitialViewController() as! UINavigationController
        let rootViewController = navigationController.viewControllers.first as! TaskListViewController
        XCTAssertTrue(rootViewController is TaskListViewController)
    }

}
