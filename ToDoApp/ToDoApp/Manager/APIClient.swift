//
//  APIClient.swift
//  ToDoApp
//
//  Created by Michail Bondarenko on 3/13/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import Foundation

protocol URLSessionProtocol {
    func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask
}

extension URLSession: URLSessionProtocol {}

class APIClient {
    lazy var urlSession: URLSessionProtocol = URLSession.shared
    
    func login(withName name: String, password: String, completionHandler: @escaping (String?, Error?) -> Void) {
        let allowedCharacters = CharacterSet.urlQueryAllowed
        guard let name = name.addingPercentEncoding(withAllowedCharacters: allowedCharacters), let password = password.addingPercentEncoding(withAllowedCharacters: allowedCharacters) else { fatalError() }
        let query = "name=\(name)&password=\(password)"
        guard let url = URL(string: "https://todoapp.com/login?\(query)") else {
            fatalError()
        }
        urlSession.dataTask(with: url) { (data, response, error)  in
            
        }.resume()
    }
}
