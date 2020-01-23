//
//  SecondViewController.swift
//  OwoceiWarzywka
//
//  Created by Aleksander Czubiak on 22/01/2020.
//  Copyright © 2020 Aleksander Czubiak. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDelegate ,UITableViewDataSource{
    
    var tasks: [Task] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell",for: indexPath) as! TaskCell
        
        cell.taskNameLabel.text = tasks[indexPath.row].name
        
      
        
        return cell
    }
    override func viewDidLoad() {
        tasks.append(Task(name: "banan"))
        
    }
}

class Task {
    var name = ""
    var checked = false
    
    convenience init (name: String){
    self.init()
    self.name = name
}
}
