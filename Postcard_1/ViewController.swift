//
//  ViewController.swift
//  Postcard_1
//
//  Created by Pavle on 4/29/15.
//  Copyright (c) 2015 Pavle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageNameLabel: UILabel!
    @IBOutlet weak var enterNametextField: UITextField!
    @IBOutlet weak var enterMessagetextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Removed comment
        
//        if (messageLabel.hidden==false)
//        {
//        messageLabel.hidden = true
//        } else
//        {
//        messageLabel.hidden = false
//        
//        }
        
        messageLabel.text = enterMessagetextField.text
        messageLabel.hidden = false
        messageLabel.textColor = UIColor.orangeColor()
        
        messageNameLabel.hidden = false
        messageNameLabel.text = enterNametextField.text
        messageNameLabel.textColor = UIColor.blueColor()
        
//        messageLabel.backgroundColor = UIColor.orangeColor()
        
        enterMessagetextField.text = ""
        enterMessagetextField.resignFirstResponder()

        enterNametextField.text = ""
        enterNametextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        
        
    }
    

}

