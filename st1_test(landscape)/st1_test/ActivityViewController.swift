//
//  ActivityViewController.swift
//  st1_test
//
//  Created by Student on 06/08/25.
//

import UIKit

class ActivityViewController: UIViewController {
    
    var moodChosen :Mood?
    var activityChosen:Activity?
    
    
    @IBOutlet weak var activityButton1: UIButton!
    @IBOutlet weak var activityButton2: UIButton!
    @IBOutlet weak var activityButton3: UIButton!
    @IBOutlet weak var activityButton4: UIButton!
    
    @IBOutlet weak var activityLabel1: UILabel!
    @IBOutlet weak var activityLabel2: UILabel!
    @IBOutlet weak var activityLabel3: UILabel!
    @IBOutlet weak var activityLabel4: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        activityButton1.setTitle(String(Activity.sedentary.rawValue), for: .normal)
        activityButton2.setTitle(String(Activity.light.rawValue), for: .normal)
        activityButton3.setTitle(String(Activity.moderate.rawValue), for: .normal)
        activityButton4.setTitle(String(Activity.intense.rawValue), for: .normal)
        
        activityLabel1.text = Activity.sedentary.description
        activityLabel2.text = Activity.light.description
        activityLabel3.text = Activity.moderate.description
        activityLabel4.text = Activity.intense.description
        
       
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func activityButton(_ sender: UIButton) {
        
        switch sender{
        case activityButton1:
            activityChosen = .sedentary
        case activityButton2:
            activityChosen = .light
        case activityButton3:
            activityChosen = .moderate
        case activityButton4:
            activityChosen = .intense
        default:
            break
        }
        
        performSegue(withIdentifier: "resultController", sender: self)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? ResultViewController else{return}
        destination.moodChosen = moodChosen
        destination.activityChosen = activityChosen
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
