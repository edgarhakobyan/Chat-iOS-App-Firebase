//
//  ChatViewController.swift
//  FlashChat
//
//  Created by Edgar on 8/29/20.
//  Copyright © 2020 Edgar. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
    @IBAction func logoutPressed(_ sender: UIBarButtonItem) {
    }
}
