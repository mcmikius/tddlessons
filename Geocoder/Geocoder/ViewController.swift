//
//  ViewController.swift
//  Geocoder
//
//  Created by Michail Bondarenko on 3/12/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString("Kyiv") { (placemarks, error) in
            let placemark = placemarks?.first
            let latitude = placemark?.location?.coordinate.latitude
            let longitude = placemark?.location?.coordinate.longitude
            print(latitude, longitude)
        }
    }


}

