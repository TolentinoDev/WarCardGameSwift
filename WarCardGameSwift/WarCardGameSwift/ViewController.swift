//
//  ViewController.swift
//  WarCardGameSwift
//
//  Created by Ryan Tolentino on 8/29/19.
//  Copyright © 2019 Ryan Tolentino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //IBoutlet just means its refferencing something on the story board
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var leftScore: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    @IBOutlet weak var rightScore: UILabel!
    
    var leftScoreCard = 0
    var rightScoreCard = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


    
    @IBAction func dealTapped(_ sender: Any) {
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber{
            
            //left side wins
            leftScoreCard += 1
            
            leftScore.text = String(leftScoreCard)
        }
        else if rightNumber > leftNumber {
            
            //right side wins
            rightScoreCard += 1
            rightScore.text = String(rightScoreCard)
        }
        else{
            
            //its a tie
            print("It's a tie")
            //TO DO
        }
        
    }

    
    
}

