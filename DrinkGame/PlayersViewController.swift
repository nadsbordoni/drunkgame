//
//  PlayersViewController.swift
//  DrinkGame
//
//  Created by Nádia Bordoni on 02/09/20.
//  Copyright © 2020 Nádia Bordoni. All rights reserved.
//

import UIKit

class PlayersViewController: UIViewController {
    var players = [Player]()
    var temporaryplayers : [String] = []
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    func readTextField(){
        //colocando os nomes em uma array
        let player = textField.text!
        temporaryplayers.append(player)
    }
    
    @IBAction func pressGo() {
        //salvar os nomes permanentemente como Player?
    }
    
    
}
