//
//  Task.swift
//  ToDoApp
//
//  Created by Michail Bondarenko on 3/6/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import Foundation

struct Task {
    let title: String
    let description: String?
    let date: Date
    let location: Location?
    
    var dictionary: [String : Any] {
        var dictionary: [String : Any] = [:]
        dictionary["title"] = title
        dictionary["description"] = description
        dictionary["date"] = date
        if let location = location {
            dictionary["location"] = location.dictionary
        }
        return dictionary
    }
    
    
    init(title: String, description: String? = nil, date: Date? = nil, location: Location? = nil) {
        self.title = title
        self.description = description
        self.date = date ?? Date()
        self.location = location
    }
}

extension Task {
    typealias PlistDictionary = [String : Any]
    init?(dictionary: PlistDictionary) {
        self.title = dictionary["title"] as! String
        self.description = dictionary["description"] as? String
        self.date = dictionary["date"] as? Date ?? Date()
//        self.location = dictionary["location"] as? Location
        if let locationDictionary = dictionary["location"] as? [String : Any] {
            self.location = Location(dictionary: locationDictionary)
        } else {
            self.location = nil
        }
    }
}

extension Task: Equatable {
    static func == (lhs: Task, rhs: Task) -> Bool {
        if lhs.title == rhs.title, lhs.description == rhs.description, /*lhs.date == rhs.date,*/ lhs.location == rhs.location {
            return true
        }
        return false
    }
}
