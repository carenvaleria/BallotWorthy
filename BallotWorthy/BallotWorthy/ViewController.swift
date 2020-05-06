//
//  ViewController.swift
//  BallotWorthy
//
//  Created by Catherine Evans on 4/29/20.
//  Copyright © 2020 BallotWorthy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //MARK: Properties
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        username.delegate = self
        password.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
       // Try to find next responder
       if let nextField = textField.superview?.viewWithTag(textField.tag + 1) as? UITextField {
          nextField.becomeFirstResponder()
       } else {
          // Not found, so remove keyboard.
          textField.resignFirstResponder()
       }
       // Do not add a line break
       return false
    }

}

