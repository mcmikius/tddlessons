//
//  DemoTests.swift
//  DemoTests
//
//  Created by Michail Bondarenko on 3/6/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import XCTest
@testable import Demo

class DemoTests: XCTestCase {
    
    var sut: ViewController!

    override func setUp() {
        super.setUp()
        sut = ViewController()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testLowestVolumeShouldBeZero() {
        
        sut.setVolume(value: -100)
        
        let volume = sut.volume
        XCTAssert(volume == 0, "Lowest value should be equal 0.")
    }
    
    func testHighestVolumeShouldBe100() {
        sut.setVolume(value: 200)
        
        let volume = sut.volume
        XCTAssert(volume == 100, "Highest value should be equal 100.")
    }
    
    func testCharsInStringsAreTheSame() {
        //given
        let string1 = "qwerty"
        let string2 = "ytrewq"
        //when
        let bool = sut.charactersCompare(stringOne: string1, stringTwo: string2)
        //then
        XCTAssert(bool, "Characters should be the same in two strings.")
    }
    
    func testCharsInStringsAreDifferent() {
        //given
        let string1 = "qwerty1"
        let string2 = "ytrewq"
        //when
        let bool = sut.charactersCompare(stringOne: string1, stringTwo: string2)
        //then
        XCTAssert(!bool, "Characters should be different in two strings.")
    }

}
