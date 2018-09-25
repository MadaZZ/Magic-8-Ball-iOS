//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by MadaZZ on 25/09/18.
//  Copyright © 2018 MadaZZMen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomBallIndex : Int = 0
    
    @IBOutlet weak var ballImage: UIImageView!
    
    var ballImageArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBAction func onClickAsk(_ sender: UIButton){
        randomiseBall()
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomiseBall()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func randomiseBall(){
        randomBallIndex = Int(arc4random_uniform(5))
        ballImage.image = UIImage(named: ballImageArray[randomBallIndex])
    }

}

