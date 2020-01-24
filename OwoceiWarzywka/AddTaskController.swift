//
//  AddTaskController.swift
//  OwoceiWarzywka
//
//  Created by Aleksander Czubiak on 24/01/2020.
//  Copyright © 2020 Aleksander Czubiak. All rights reserved.
//

import UIKit

protocol AddTask {
    func addTask(name: String)
}

class AddTaskController: UIViewController {
    
    @IBAction func addAction(_ sender: Any) {
        if nameTextField.text != "" {
            delegate?.addTask(name: nameTextField.text!)
            navigationController?.popViewController(animated: true)
        }
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    
    var delegate: AddTask?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
