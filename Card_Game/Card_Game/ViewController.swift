//
//  ViewController.swift
//  Card_Game
//
//  Created by Savan Patel on 2019-09-20.
//  Copyright © 2019 Savan Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var LeftImageView: UIImageView!
    
    @IBOutlet weak var RightImageView: UIImageView!
    
    @IBOutlet weak var LeftScoreLabel: UILabel!
    
    @IBOutlet weak var RightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any)
    {
        let leftNumber = Int.random(in: 2...14)
        
        let rightNumber = Int.random(in: 2...14)
        
        LeftImageView.image = UIImage(named: "card\(leftNumber)")
        
        RightImageView.image = UIImage(named: "card\(rightNumber)")
        
        
        if leftNumber > rightNumber
        {
            leftScore += 1
            LeftScoreLabel .text = String(leftScore)
        }
        else if leftNumber < rightNumber
        {
            rightScore += 1
            RightScoreLabel.text = String(rightScore)
        }
        else if leftNumber == rightNumber
        {
            leftScore -= 1
            rightScore -= 1
            LeftScoreLabel.text = String(leftScore)
            RightScoreLabel.text = String(rightScore)
        }
        
        
    }
    
}

