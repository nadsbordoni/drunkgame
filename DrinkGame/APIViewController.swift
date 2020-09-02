//
//  APIViewController.swift
//  DrinkGame
//
//  Created by Palloma Ramos on 01/09/20.
//  Copyright © 2020 Nádia Bordoni. All rights reserved.
//

import UIKit

class APIViewController: UIViewController {
    
    
    @IBOutlet var label: UILabel!
    @IBOutlet var imageView: UIImageView!
    var drink: [DrinkElement] = []
    
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
                let drinkData = try decoder.decode(Drink.self, from: data!)
                self.drink = drinkData.drinks
                
                let aleatorynumber = self.randomNumber(num: self.drink.count)
                
                let drinkname = self.drink[aleatorynumber].strDrink
                let url = URL(string: self.drink[aleatorynumber].strDrinkThumb)
                let data = try? Data(contentsOf: url!)
                if let data = data {
                    DispatchQueue.main.async { // Correct
                        self.imageView.image = UIImage(data: data)
                        self.label.text = drinkname
                        
                    }
                }
            } catch {
                print("Erro: " + error.localizedDescription)
            }
            
        }
        task.resume()
    }
    
    func randomNumber(num: Int) -> Int {
        return Int(arc4random_uniform(UInt32(num)))
    }
    
    
}
