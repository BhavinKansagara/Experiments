//
//  ViewController.swift
//  Hello Swift
//
//  Created by Bhavin Kansagara on 05/03/17.
//  Copyright © 2017 Bhavin Kansagara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
    }
    
    //MARK: - Button Actions
    @IBAction func btnShowAlertPressed(sender: UIButton){
        
        let title = "Hello Swift"
        let message = "This is just the welcome message for you. Explore more on swift"
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let actionTitle = "OK"
        let action = UIAlertAction(title: actionTitle, style: .default) { (k) in
            print("ok presed")
        }
        
        alertController.addAction(action)
        alertController.show(self, sender: self)
    }
    
    @IBAction func btnShowActionSheetPressed(sender: UIButton){
        
        let title = "Hello Swift"
        let message = "This is just the welcome message for you. Explore more on swift"
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        
        let actionTitle = "OK"
        let actionDefault = UIAlertAction(title: actionTitle, style: .default) { (k) in
            print("ok presed")
        }
        
        let destructiveTitle = "Destructive"
        let actionDestructive = UIAlertAction(title: destructiveTitle, style: .destructive) { (k) in
            print("Destructive presed")
        }
        
        alertController.addAction(actionDefault)
        alertController.addAction(actionDestructive)

        alertController.show(self, sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

