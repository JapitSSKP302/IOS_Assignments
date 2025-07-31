//
//  MiddleViewController.swift
//  OrderofEvents
//
//  Created by Student on 22/07/25.
//

import UIKit

class MiddleViewController: UIViewController {

  
    @IBOutlet weak var label: UILabel!
        var eventNumber: Int = 1
        
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from: "viewDidLoad")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            print("View will appear")
            addEvent(from: "viewWillAppear")
        }
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            print("View did appear")
            addEvent(from: "viewDidAppear")
        }
        
        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            print("View will disappear")
            addEvent(from: "viewWillDisappear")
        }
        
        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)
            print("View did disappear")
            addEvent(from: "viewDidDisappear")
        }
    
    
    func addEvent(from: String) {
            if let existingText = label.text{
                label.text = "\(existingText)\n Event Number \(eventNumber) was \(from)"
                eventNumber += 1

            }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
