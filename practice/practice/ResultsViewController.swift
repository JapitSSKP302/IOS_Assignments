//
//  ResultsViewController.swift
//  practice
//
//  Created by Student on 01/08/25.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    
    var responses : [Answer]
    
    init?(coder: NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        calcPersTest()
        // Do any additional setup after loading the view.
    }
    
    func calcPersTest() {
        let freqOfAns = responses.reduce(into: [:]) { counts, answer in
            counts[answer.type, default: 0] += 1
        }
        
        let mostCommonAnswers = freqOfAns.sorted { $0.value > $1.value }.first!.key
        
        resultAnswerLabel.text = "Your are a \(mostCommonAnswers.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswers.definiton
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
