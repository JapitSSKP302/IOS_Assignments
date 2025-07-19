//
//  ViewController.swift
//  bmiCalculator
//
//  Created by Student on 14/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightTextField: UITextField!//this is in the form of a string
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var calculatedBMI: UILabel!
    
  
    @IBOutlet weak var calculatorText: UILabel!
    
    
    
    override func viewDidLoad() {
        //parent class ka view print ho rha hai yhan pe
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButtonPressed(_ sender: Any) {
        let weightString = weightTextField.text ?? ""
        let weight = Double(weightString) ?? 0
        let heightString = heightTextField.text ?? ""
        let height = Double(heightString) ?? 0
        
        let bmi = weight/(height*height)
        
        
        calculatedBMI.text = "BMI is \(bmi)"
        
    }
    
    @IBAction func bmiToggle(_ sender: UISwitch) {
        if sender.isOn{
            calculatorText.text = "Calculator is On!!!"
        }else{
            calculatorText.text = "Calculator is Off!!"
        }
    }
    
    
}

