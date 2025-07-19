//
//  ViewController.swift
//  Two Buttons
//
//  Created by Student on 16/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
   
//    @IBAction func setTextButtonTapped(_ sender: Any) {
//        let textString = textField.text ?? ""
//        label.text = textString
//    }
    
    @IBAction func setTextButtonTapped(_ sender: Any) {
        let textString = textField.text ?? ""
        label.text = textString
    }
    
    
    
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        textField.text = ""
        label.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

