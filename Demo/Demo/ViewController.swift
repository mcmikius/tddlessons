//
//  ViewController.swift
//  Demo
//
//  Created by Michail Bondarenko on 3/6/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private (set) var volume = 0
    
    func setVolume(value: Int) {
        volume = min(max(value, 0), 100)
    }
    
    func charactersCompare(stringOne: String, stringTwo: String) -> Bool {
        return Set(stringOne) == Set(stringTwo)
        
    }
}

