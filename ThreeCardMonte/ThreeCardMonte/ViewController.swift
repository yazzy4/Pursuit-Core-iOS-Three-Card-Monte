//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var card0: UIButton!
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var display: UILabel!
    
override func viewDidLoad() {
    super.viewDidLoad()
  }
@IBAction func cardChoice(_ sender: UIButton) {
    var images =
        [UIImage.init(named: "kingCard"), UIImage.init(named:"threeCard"), UIImage.init(named: "threeCard")]
   images = images.shuffled()
    
    switch sender.tag {
    case 0:
        card0.setImage(images[0], for: .normal)
        if images[0] == UIImage(named: "kingCard"){
            card0.setImage(UIImage.init(named: "kingCard"), for: .normal)
            display.text = "You Won"
        } else {
            card1.setImage(UIImage.init(named: "threeCard"), for: .normal)
            display.text = "You Lose"
        }
        card0.isEnabled = false
        card0.isEnabled = false
        card0.isEnabled = false
        
     
    case 1:
        card1.setImage(images[1], for: .normal)
        if images[1] == UIImage(named: "kingCard"){
            card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
            display.text = "You Won"
        } else {
            card1.setImage(UIImage.init(named: "threeCard"), for: .normal)
            display.text = "You Lose"
         }
        card1.isEnabled = false
        card1.isEnabled = false
        card1.isEnabled = false
        
        
    case 2:
        card2.setImage(images[2], for: .normal)
        if images[2] == UIImage(named: "kingCard"){
            card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
            display.text = "You Won"
        } else {
            card2.setImage(UIImage.init(named: "threeCard"), for: .normal)
            display.text = "You Lose"
            
        }
        card2.isEnabled = false
        card2.isEnabled = false
        card2.isEnabled = false
        
        
    default:
        print("Error")
    }
    
    for image in 0..<images.count {
        if images[image] == UIImage.init(named: "kingCard"){
            if image == 0 {
                card0.setImage(UIImage.init(named: "kingCard"), for: .normal)
            }
            else if image == 1 {
                card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
            }
            else if image == 2 {
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                }
            }
        }
    
    }

    @IBAction func NewGame(_ sender: UIButton) {
        display.text = "Guess a card"
        card0.isEnabled = true
        card1.isEnabled = true
        card2.isEnabled = true
        card0.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        card1.setImage(UIImage.init(named: "cardBackRed"), for: .normal )
        card2.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        
    }
    
}
