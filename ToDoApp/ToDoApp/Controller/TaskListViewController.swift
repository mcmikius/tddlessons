//
//  ViewController.swift
//  ToDoApp
//
//  Created by Michail Bondarenko on 3/6/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import UIKit

class TaskListViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var dataProvider: DataProvider!
    @IBAction func addNewTask(_ sender: UIBarButtonItem) {
        if let viewController = storyboard?.instantiateViewController(withIdentifier: String(describing: NewTaskViewController.self)) as? NewTaskViewController {
            present(viewController, animated: true, completion: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

