//
//  APIViewController.swift
//  DrinkGame
//
//  Created by Palloma Ramos on 01/09/20.
//  Copyright © 2020 Nádia Bordoni. All rights reserved.
//

import UIKit

class APIViewController: UIViewController {
    
    var drink: [Drink] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.load("https://www.thecocktaildb.com/api/json/v1/1/filter.php?i=Vodka")

        // Do any additional setup after loading the view.
    }
    func load(_ urlStrings:String) {
        let session = URLSession.shared
        let url = URL(string: urlStrings)
        let task = session.dataTask(with: url!) { (data, response, error) in
            //codigo para receber os dados da resposta da requisição
            do {
                let decoder = JSONDecoder()
                let drinkData = try decoder.decode([Drink].self, from: data!)
                self.drink = drinkData
                //self.tableView.reloadData()
            } catch {
                print("Erro: " + error.localizedDescription)
            }
            
        }
        task.resume()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
