//
//  ResultViewController.swift
//  st1_test
//
//  Created by Student on 06/08/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    var moodChosen : Mood?
    var activityChosen : Activity?

    @IBOutlet weak var resultlabel1: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let mood = moodChosen , let activity = activityChosen {
            let suggestion = getMealSuggestion(mood: mood, activity: activity)
            resultlabel1.text = suggestion
        }
    }
    
    
    func getMealSuggestion(mood: Mood, activity: Activity) -> String {
        switch (mood, activity) {
        case (.happy, .sedentary):
            return "Grilled chicken salad 🥗"
        case (.happy, .light):
            return "Protein smoothie 🥤"
        case (.happy, .moderate):
            return "Fruit bowl 🍓"
        case (.happy, .intense):
            return "Light yogurt parfait 🍨"
            
        case (.sad, .sedentary):
            return "Comfort pasta 🍝"
        case (.sad, .light):
            return "Warm soup 🍲"
        case (.sad, .moderate):
            return "Chocolate treat 🍫"
        case (.sad, .intense):
            return "Herbal tea 🍵"
            
        case (.stressed, .sedentary):
            return "Spicy burrito 🌯"
        case (.stressed, .light):
            return "Energy bar 🍫"
        case (.stressed, .moderate):
            return "Nuts and seeds mix 🥜"
        case (.stressed, .intense):
            return "Chamomile tea 🍵"
            
        case (.energetic, .sedentary):
            return "Quinoa bowl 🍲"
        case (.energetic, .light):
            return "Coconut water 🥥"
        case (.energetic, .moderate):
            return "Avocado toast 🥑"
        case (.energetic, .intense):
            return "Warm milk 🥛"
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
