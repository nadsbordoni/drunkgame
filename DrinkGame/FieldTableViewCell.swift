//
//  FieldTableViewCell.swift
//  DrinkGame
//
//  Created by Nádia Bordoni on 02/09/20.
//  Copyright © 2020 Nádia Bordoni. All rights reserved.
//

import UIKit

class FieldTableViewCell: UITableViewCell, UITextFieldDelegate {
    static let identifier = "FieldTableViewCell"
    static func nib() -> UINib{
        return UINib(nibName: "FieldTableViewCell", bundle: nil)
    }
    @IBOutlet var field: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        field.placeholder = "Player's name"
        field.delegate = self
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("\(textField.text ?? "")")
        return true
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
