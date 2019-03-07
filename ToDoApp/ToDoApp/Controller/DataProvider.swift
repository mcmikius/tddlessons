//
//  DataProvider.swift
//  ToDoApp
//
//  Created by Michail Bondarenko on 3/7/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import Foundation
import UIKit

class DataProvider: NSObject {
    
}

extension DataProvider: UITableViewDelegate {
    
}

extension DataProvider: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
