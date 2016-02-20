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

    // buttons
    
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var businessLoginButton: UIButton!
    
    // labels
    
    @IBOutlet var loginStatus: UILabel! // Could either be employer or employee
    
    // bools
    
    var employee: Bool = true

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 14
        
        if employee {
            loginStatus.text = "Werknemer";
            businessLoginButton.setTitle("Als werkgever inloggen", forState: .Normal)
        } else {
            loginStatus.text = "Werkgever";
            businessLoginButton.setTitle("Als werknemer inloggen", forState: .Normal)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK - Functions
    
    func switchEmployeeAndEmployer() {
        if employee {
            loginStatus.text = "Werkgever";
            businessLoginButton.setTitle("Als werknemer inloggen", forState: .Normal)
            employee = false
        } else {
            loginStatus.text = "Werknemer";
            businessLoginButton.setTitle("Als werkgever inloggen", forState: .Normal)
            employee = true
        }
    }
    
    // MARK - IBActions
    
    @IBAction func businessLogin() {
        
        UIView.transitionWithView(loginStatus, duration: 0.5, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: { () -> Void in
            print(Profile().name)
            self.switchEmployeeAndEmployer()
            }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

