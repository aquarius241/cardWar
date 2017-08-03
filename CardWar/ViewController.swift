//
//  ViewController.swift
//  CardWar
//
//  Created by Alex on 7/29/17.
//  Copyright © 2017 Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    let allCards = ["ace", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king"]
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dealClicked(_ sender: UIButton) {
        let leftRandom = Int(arc4random_uniform(13))
        leftImageView.image = UIImage.init(named: allCards[leftRandom])
        
        let rightRandom = Int(arc4random_uniform(13))
        rightImageView.image = UIImage.init(named: allCards[rightRandom])
        
        if leftRandom > rightRandom {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            messageLabel.text = "Player win!!!"
        }
        else if leftRandom < rightRandom {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
            messageLabel.text = "Computer win!!!"
        }
        else {
            messageLabel.text = "Tie!!!"
        }
        
        
    }
    
}

