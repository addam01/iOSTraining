//
//  ViewController.swift
//  FoodTracker
//
//  Created by Addam Rashidi on 03/08/2019.
//  Copyright © 2019 Addam Rashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
    }

    //    MARK: UiFieldDelegates
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        This is called when the Return button is pressed
//        Hide the keyboard, first responder means view focus to textfield
        nameTextField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
//        Called when view focus is cleared
        mealNameLabel.text = textField.text
    }
    
    //MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Meal"
    }
    

}

