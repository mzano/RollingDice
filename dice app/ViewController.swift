//
//  ViewController.swift
//  dice app
//
//  Created by Maurizio Zano on 16/04/2019.
//  Copyright © 2019 Maurizio Zano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
        
    }
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        
        let firstElement: String = diceArray[0]
        
        diceImageView1.image = UIImage(named: firstElement)
        diceImageView2.image = UIImage(named: firstElement)
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
}

