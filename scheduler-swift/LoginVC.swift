//
//  ViewController.swift
//  scheduler-swift
//
//  Created by Brian Park on 2016-08-05.
//  Copyright © 2016 Casting Workbook. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func onLoginPressed(sender: AnyObject) {
        let username = usernameField.text
        let password = passwordField.text
        
        DataService.ds.postSession(username!, password: password!) { (data) in
            DataService.ds.getUser(data, completed: { (data) in
                
            })
        }
    }
}

