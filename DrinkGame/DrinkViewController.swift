//
//  DrinkViewController.swift
//  DrinkGame
//
//  Created by Palloma Ramos on 02/09/20.
//  Copyright © 2020 Nádia Bordoni. All rights reserved.
//

import Foundation

// MARK: - Drink
struct Drink: Codable {
    let drinks: [DrinkElement]
}

// MARK: - DrinkElement
struct DrinkElement: Codable {
    let strDrink: String
    let strDrinkThumb: String
    let idDrink: String
}
