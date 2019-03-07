//
//  Location.swift
//  ToDoApp
//
//  Created by Michail Bondarenko on 3/6/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import Foundation
import CoreLocation

struct Location {
    let name: String
    let coordinate: CLLocationCoordinate2D?
    
    init(name: String, coordinate: CLLocationCoordinate2D? = nil) {
        self.name = name
        self.coordinate = coordinate
    }
}

extension Location: Equatable {
    static func == (lhs: Location, rhs: Location) -> Bool {
        guard rhs.coordinate?.latitude == lhs.coordinate?.latitude && lhs.coordinate?.longitude == rhs.coordinate?.longitude && lhs.name == rhs.name else { return false }
        return true
    }
}
