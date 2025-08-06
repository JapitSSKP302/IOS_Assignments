//
//  suggestion.swift
//  st1_test
//
//  Created by Student on 06/08/25.
//

import Foundation


enum Mood : Character {
    case happy = "😄" , sad = "😭" , stressed = "😩" , energetic = "⚡️"
    
    
    var description: String {
            switch self {
            case .happy: return "Happy"
            case .sad: return "Sad"
            case .stressed: return "Stressed"
            case .energetic: return "Energetic"
            }
    }
    
}


enum Activity : Character {
    case sedentary = "🪑" , light = "🚶‍♂️" , moderate = "🏃‍♂️" , intense = "🏋️‍♂️"
    var description: String {
            switch self {
            case .sedentary: return "Sedentary"
            case .light: return "Light"
            case .moderate: return "Moderate"
            case .intense: return "Intense"
            }
    }
}



