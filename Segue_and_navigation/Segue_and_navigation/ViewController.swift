//
//  ViewController.swift
//  Segue_and_navigation
//
//  Created by Student on 18/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var toggleSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func unwindTooRed(unwindSegue: UIStoryboardSegue) {
        
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
    }
    
    @IBAction func goToYellow(_ sender: Any) {
        if toggleSwitch.isOn {
            performSegue(withIdentifier: "yellow", sender: nil)
        }else{
            performSegue(withIdentifier: "teal", sender: nil)
        }
    }
}

