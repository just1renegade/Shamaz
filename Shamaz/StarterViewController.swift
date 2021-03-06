//
//  StarterViewController.swift
//  Shamaz
//
//  Created by zsolt on 15/11/2018.
//  Copyright © 2018 zsolt. All rights reserved.
//

import UIKit

// set default value for total players
var totalPlayers: Int = 2

class StarterViewController: UIViewController, UITextFieldDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "backgroundImage")!)
    }
    
    @IBAction func startButton(_ sender: UIButton) {
    }

// ensure that number of players has to be a number between 2 and 12

    func textFieldDidEndEditing(_ textField: UITextField){
        if Int(textField.text ?? "") == nil {
            textField.text = "2"
            totalPlayers = 2
        } else if Int(textField.text!)! > 12 {
            textField.text = "12"
            totalPlayers = 12
        } else if Int(textField.text!)! < 2 {
            textField.text = "2"
            totalPlayers = 2
        } else {
            totalPlayers = Int(textField.text!)!
        
       }
    }

// dismiss the keyboard when the user taps the return button
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
        
}

