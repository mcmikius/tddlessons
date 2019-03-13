//
//  String+extensions.swift
//  ToDoApp
//
//  Created by Michail Bondarenko on 3/13/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import Foundation

extension String {
    var percentEncoded: String {
        let allowedCharacters = CharacterSet(charactersIn: "~!@#$%^&*()_+-=|\\][}{/.,?><`").inverted
        guard let encodedString = self.addingPercentEncoding(withAllowedCharacters: allowedCharacters) else {
            fatalError()
        }
        return encodedString
    }
    
}
