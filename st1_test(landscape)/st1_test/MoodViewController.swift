//
//  MoodViewController.swift
//  st1_test
//
//  Created by Student on 06/08/25.
//

import UIKit

class MoodViewController: UIViewController {
    
    var moodChosen:Mood?
    
    
    @IBOutlet weak var moodButton1: UIButton!
    @IBOutlet weak var moodButton2: UIButton!
    @IBOutlet weak var moodButton3: UIButton!
    @IBOutlet weak var moodButton4: UIButton!
    
    
    @IBOutlet weak var moodLabel1: UILabel!
    @IBOutlet weak var moodLabel2: UILabel!
    @IBOutlet weak var moodLabel3: UILabel!
    @IBOutlet weak var moodLabel4: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        moodButton1.setTitle(String(Mood.happy.rawValue), for: .normal)
        moodButton2.setTitle(String(Mood.sad.rawValue), for: .normal)
        moodButton3.setTitle(String(Mood.stressed.rawValue), for: .normal)
        moodButton4.setTitle(String(Mood.energetic.rawValue), for: .normal)
        moodLabel1.text = Mood.happy.description
        moodLabel2.text = Mood.sad.description
        moodLabel3.text = Mood.stressed.description
        moodLabel4.text = Mood.energetic.description

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func moodButtonPressed(_ sender: UIButton) {
        
        switch sender{
        case moodButton1:
            moodChosen = .happy
        case moodButton2:
            moodChosen = .sad
        case moodButton3:
            moodChosen = .stressed
        case moodButton4:
            moodChosen = .energetic
        default:
            break
        }
        
        
        performSegue(withIdentifier: "activityController", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? ActivityViewController else {return}
        destination.moodChosen = moodChosen
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
