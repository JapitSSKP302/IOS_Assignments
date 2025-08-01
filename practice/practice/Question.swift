//
//  Question.swift
//  practice
//
//  Created by Student on 01/08/25.
//

import Foundation

struct Question{
    var text:String
    var type:ResponseType
    var answers:[Answer]
}

enum ResponseType{
    case single, multiple, ranged
}

struct Answer{
    var text:String
    var type:AnimalType
}

enum AnimalType: Character{
    case lion="🦁",cat="🐱",rabbit="🐰",turtle="🐢"
    
    var definiton:String{
        switch self{
        case .lion:
            return "Roar"
        case .cat:
            return "meow"
        case .rabbit:
            return "Fluffy"
        case .turtle:
            return "Shell"
        }
    }
}

