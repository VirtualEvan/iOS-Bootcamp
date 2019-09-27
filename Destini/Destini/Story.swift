//
//  Story.swift
//  Destini
//
//  Created by Esteban Puentes on 25.09.19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class Story {
    
    let text : String
    let answer1 : Answer?
    let answer2 : Answer?
    
    init(text: String, answer1: Answer?, answer2: Answer?) {
        
        self.text = text
        self.answer1 = answer1
        self.answer2 = answer2
        
    }
    
}
