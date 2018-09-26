//
//  ObserveVC.swift
//  IQTestNew
//
//  Created by Archana Panda on 9/25/18.
//  Copyright © 2018 Archana Panda. All rights reserved.
//

import UIKit

class ObserveVC: UIViewController {

    @IBOutlet weak var dice1Image: UIImageView!
    @IBOutlet weak var dice2Image: UIImageView!
    
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    var randomDice1:Int = 0
    var randomDice2:Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func rollPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        var dice1Field = Int(arc4random_uniform(6))
        var dice2Field = Int(arc4random_uniform(6))
        
        dice1Image.image = UIImage(named: diceArray[dice1Field])
        dice2Image.image = UIImage(named: diceArray[dice2Field])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }

}
