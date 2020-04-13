//
//  ViewController.swift
//  tip_
//
//  Created by Angelo Basa on 4/10/20.
//  Copyright © 2020 Angelo Basa. All rights reserved.
//

import UIKit
var total = 0.0

class ViewController: UIViewController {
    
    @IBOutlet weak var perPerson: UILabel!
    @IBOutlet weak var personField: UITextField!
    @IBOutlet weak var controllerField: UISegmentedControl!
    @IBOutlet weak var tipField: UILabel!
    @IBOutlet weak var totalField: UILabel!
    @IBOutlet weak var billField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.20]
        
        let tip = bill * tipPercentages[controllerField.selectedSegmentIndex]
        total = bill + tip
        tipField.text = String(format: "$%.2f",tip)
        totalField.text = String(format: "$%.2f",total)
    }
    @IBAction func calculatePersonTotal(_ sender: Any) {
        let people = Double(personField.text!) ?? 0
        if(people>0)
        {
            let persontotal = total / people
        perPerson.text = String(format: "$%.2f",persontotal)
        }
        else{
            perPerson.text = "$0.00"
        }
        
    }
}


