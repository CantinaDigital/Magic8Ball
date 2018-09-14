//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by NASA on 9/13/18.
//  Copyright © 2018 Cantina Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber: Int = 0
    
    func newBallImage() {
        randomBallNumber = Int.random(in: 0 ... 5)
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        newBallImage()
    }


}

