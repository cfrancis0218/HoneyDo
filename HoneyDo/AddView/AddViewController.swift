//
//  AddViewController.swift
//  HoneyDo
//
//  Created by Christian Elijah on 2020-08-23.
//  Copyright © 2020 Christian Elijah. All rights reserved.
//

import UIKit

protocol AddTask {
    func addTask(name: String)
}

class AddViewController: UIViewController {

    @IBAction func addAction(_ sender: Any) {
        if taskField.text != "" {
            delegate?.addTask(name: taskField.text!)
            navigationController?.popViewController(animated: true)
        }
    }
    
    @IBOutlet var addTaskLabel: UILabel!
    @IBOutlet var addTaskButton: UIButton!
    @IBOutlet var taskField: UITextField!
    
    var delegate: AddTask?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Button
        addTaskButton.layer.borderColor = UIColor.black.cgColor
        addTaskButton.layer.borderWidth = 2.0
        addTaskButton.layer.cornerRadius = 15
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
