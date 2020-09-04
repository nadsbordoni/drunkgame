//
//  PlayersViewController.swift
//  DrinkGame
//
//  Created by Nádia Bordoni on 02/09/20.
//  Copyright © 2020 Nádia Bordoni. All rights reserved.
//

import UIKit

class PlayersViewController: UIViewController{
    
    @IBOutlet var playerOne: UITextField!
    @IBOutlet var playerTwo: UITextField!
    @IBOutlet var playerThree: UITextField!
    @IBOutlet var playerFour: UITextField!
    @IBOutlet var playerFive: UITextField!
    @IBOutlet var playerSix: UITextField!
    @IBOutlet var playerSeven: UITextField!
    @IBOutlet var playerEight: UITextField!
    //var players = [Player]()
    var names: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        playerOne.resignFirstResponder()
        playerTwo.resignFirstResponder()
        playerThree.resignFirstResponder()
        playerFour.resignFirstResponder()
        playerFive.resignFirstResponder()
        playerSix.resignFirstResponder()
        playerSeven.resignFirstResponder()
        playerEight.resignFirstResponder()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let viewControllerB = segue.destination as? PickerViewController {
        viewControllerB.text = playerOne.text
        
    }
    }
    
    @IBAction func pressGo() {
        names.append(playerOne.text!)
        names.append(playerTwo.text!)
        names.append(playerThree.text!)
        names.append(playerFour.text!)
        names.append(playerFive.text!)
        names.append(playerSix.text!)
        names.append(playerSeven.text!)
        names.append(playerEight.text!)
        print(names[0])
        print(names[1])
        print(names[2])
    }
}


extension UIViewController: UITextFieldDelegate{
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        resignFirstResponder()
        return true
    }

}



