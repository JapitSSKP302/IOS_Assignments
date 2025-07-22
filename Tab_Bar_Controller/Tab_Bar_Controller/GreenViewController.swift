//
//  GreenViewController.swift
//  Tab_Bar_Controller
//
//  Created by Sagar Midha on 21/07/25.
//

import UIKit

class GreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarItem.badgeValue = "3"

        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super
            .viewWillAppear(animated)
        tabBarItem.badgeValue = nil
    }
 

    
}
