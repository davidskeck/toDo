//
//  SecondViewController.swift
//  toDo
//
//  Created by David Keck on 6/10/14.
//  Copyright (c) 2014 David Keck. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var ttltoDo: UITextField!
    @IBOutlet var dsctoDo: UITextField!
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Add Task button
    @IBAction func buttonAddTaskTouched(sender: UIButton) {
        println("Add task was touched!")
        toDo.addTask(ttltoDo.text, desc: dsctoDo.text)
        ttltoDo.text = ""
        dsctoDo.text = ""
        self.view.endEditing(true)
    }
    
    @IBAction func buttonCancelTouched(sender: UIButton) {
        println("Cancel was touched!")
        self.view.endEditing(true)
        self.tabBarController.selectedIndex = 0
    }
    
    // UITextField delegeate
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }// called when 'return' key pressed. return NO to ignore.


}

