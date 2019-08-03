//
//  ViewController.swift
//  FoodTracker
//
//  Created by Addam Rashidi on 03/08/2019.
//  Copyright © 2019 Addam Rashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = nameTextField.text
    }
    

}

