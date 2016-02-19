//
//  ViewController.swift
//  HackathonTempoTeam
//
//  Created by Tom de Ruiter on 19/02/16.
//  Copyright © 2016 Tom de Ruiter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // user + pass fields
    
    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passTextField: UITextField!
    
    // login button
    
    @IBOutlet var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 14
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

