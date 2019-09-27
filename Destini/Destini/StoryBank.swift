//
//  StoryBank.swift
//  Destini
//
//  Created by Esteban Puentes on 25.09.19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class StoryBank {
    
    var stories = [Story]()
    
    let start : Story
    
    init() {
        
        // Our strings
        let story1 = "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\"."
        let answer1a = "I\'ll hop in. Thanks for the help!"
        let answer1b = "Better ask him if he\'s a murderer first."
        
        let story2 = "He nods slowly, unphased by the question."
        let answer2a = "At least he\'s honest. I\'ll climb in."
        let answer2b = "Wait, I know how to change a tire."
        
        let story3 = "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box."
        let answer3a = "I love Elton John! Hand him the cassette tape."
        let answer3b = "It\'s him or me! You take the knife and stab him."
  
        let story4 = "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?"
        let story5 = "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in."
        let story6 = "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""
        
        let s6 = Story(text: story6, answer1: nil, answer2: nil)
        let s5 = Story(text: story5, answer1: nil, answer2: nil)
        let s4 = Story(text: story4, answer1: nil, answer2: nil)
        
        let a3a = Answer(text: answer3a, story: s6)
        let a3b = Answer(text: answer3b, story: s5)
        let s3 = Story(text: story3, answer1: a3a, answer2: a3b)
        
        let a2a = Answer(text: answer2a, story: s3)
        let a2b = Answer(text: answer2b, story: s4)
        let s2 = Story(text: story2, answer1: a2a, answer2: a2b)
        
        let a1a = Answer(text: answer1a, story: s3)
        let a1b = Answer(text: answer1b, story: s2)
        start = Story(text: story1, answer1: a1a, answer2: a1b)
        
    }
    
}
