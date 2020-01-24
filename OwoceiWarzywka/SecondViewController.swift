//
//  SecondViewController.swift
//  OwoceiWarzywka
//
//  Created by Aleksander Czubiak on 22/01/2020.
//  Copyright © 2020 Aleksander Czubiak. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AddTask, CheckBox {
    
    @IBOutlet weak var tableView: UITableView!
    
    var tasks: [Tasks] = []
    
    override func viewDidLoad() {
        tasks.append(Tasks(name: "banan"))
        tasks.append(Tasks(name: "twaróg"))
        tasks.append(Tasks(name: "Masło orzechowe"))
        tasks.append(Tasks(name: "mleko"))
        tasks.append(Tasks(name: "płatki owsiane"))
        tasks.append(Tasks(name: "jajko"))
        tasks.append(Tasks(name: "awokado"))
        tasks.append(Tasks(name: "humus"))
        tasks.append(Tasks(name: "jogurt"))
        tasks.append(Tasks(name: "jabłko"))
        tasks.append(Tasks(name: "czekolada"))
        tasks.append(Tasks(name: "miód"))
        tasks.append(Tasks(name: "bułka"))
        tasks.append(Tasks(name: "kurczak"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath) as! TaskCell
        
        cell.taskNameLabel.text = tasks[indexPath.row].name
        
        if tasks[indexPath.row].checked {
            cell.checkBoxOutlet.setBackgroundImage(#imageLiteral(resourceName: "baseline_restaurant_black_18dp"), for: UIControl.State.normal)
        } else {
            cell.checkBoxOutlet.setBackgroundImage(#imageLiteral(resourceName: "baseline_restaurant_black_18dp"), for: UIControl.State.normal)
        }
        
        cell.delegate = self
        cell.tasks = tasks
        cell.indexP = indexPath.row
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! AddTaskController
        vc.delegate = self
    }
    
    func addTask(name: String) {
        tasks.append(Tasks(name: name))
        tableView.reloadData()
    }
    
    func checkBox(state: Bool, index: Int?) {
        tasks[index!].checked = state
        tableView.reloadRows(at: [IndexPath(row: index!, section: 0)], with: UITableView.RowAnimation.none)
    }
}

class Tasks {
    var name = ""
    var checked = false
    
    convenience init (name: String) {
        self.init()
        self.name = name
    }
}

