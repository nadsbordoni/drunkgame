//
//  PlayersViewController.swift
//  DrinkGame
//
//  Created by Nádia Bordoni on 02/09/20.
//  Copyright © 2020 Nádia Bordoni. All rights reserved.
//

import UIKit

class PlayersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    //var players = [Player]()
    //var temporaryplayers : [String] = []

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(FieldTableViewCell.nib(), forCellReuseIdentifier: FieldTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let fieldCell = tableView.dequeueReusableCell(withIdentifier: FieldTableViewCell.identifier, for: indexPath) as! FieldTableViewCell 
        return fieldCell
    }
//    func readTextField(){
//
//    }
    
    @IBAction func pressGo() {
        //salvar os nomes permanentemente como Player?
    }
    
    
}
