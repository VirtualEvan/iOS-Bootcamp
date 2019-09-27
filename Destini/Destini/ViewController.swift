//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    // TODO Step 5: Initialise instance variables here
    
    let stories = StoryBank()
    var current : Story?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        
        current = stories.start
        showStory(story: current!)
        
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        // TODO Step 4: Write an IF-Statement to update the views
                
        // TODO Step 6: Modify the IF-Statement to complete the story
        
        restartButton.isHidden = true
        
        if sender.tag == 1{
            showStory(story: current!.answer1!.story)
        }
        else {
            showStory(story: current!.answer2!.story)
        }
    
    }
    
    func showStory(story: Story){
        
        current = story
        
        storyTextView.text = current?.text
        
        if current?.answer1 == nil {
            
            topButton.isHidden = true
            bottomButton.isHidden = true
            restartButton.isHidden = false
            
        }
        else {
            
            topButton.setTitle(current?.answer1?.text, for: .normal)
            bottomButton.setTitle(current?.answer2?.text, for: .normal)
            
        }
        
    }

    @IBAction func restartPressed(_ sender: UIButton) {
        
        showStory(story: stories.start)
        restartButton.isHidden = true
        bottomButton.isHidden = false
        topButton.isHidden = false
        
    }
    
}

