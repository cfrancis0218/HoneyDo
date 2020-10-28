//
//  TaskCell.swift
//  HoneyDo
//
//  Created by Christian Elijah on 2020-08-23.
//  Copyright © 2020 Christian Elijah. All rights reserved.
//

import UIKit

protocol ChangeButton {
    func changeButton(checked: Bool, index: Int)
}

class TaskCell: UITableViewCell {

    @IBAction func checkBoxAction(_ sender: Any) {
        if tasks![indexP!].checked {
            delegate?.changeButton(checked: false, index: indexP!)
        } else {
            delegate?.changeButton(checked: true, index: indexP!)
        }
    }
    
    @IBOutlet var checkBox: UIButton!
    @IBOutlet var taskName: UILabel!
    
    
    var delegate: ChangeButton?
    var indexP: Int?
    var tasks: [Task]?
}
