//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Esteban Puentes on 20.09.19.
//  Copyright © 2019 Esteban Puentes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallIndex: Int = 0
    
    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
    }
    
    
    @IBAction func askButtonPressed(_ sender: Any) {
        
        newBallImage()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        newBallImage()
        
    }
    
    func newBallImage() {
        
        randomBallIndex = Int.random(in: 0 ... 4)
        
        ballImageView.image = UIImage.init(named: ballArray[randomBallIndex])
        
    }

}

