//
//  PickerViewController.swift
//  DrinkGame
//
//  Created by Palloma Ramos on 31/08/20.
//  Copyright © 2020 Nádia Bordoni. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    //let playervc = PlayersViewController()
    var text: String!
    var names: [String] = []
    @IBOutlet var startButtonOutlet: UIButton!
    @IBOutlet var shameButtonOutlet: UIButton!
    @IBOutlet var doneButtonOutlet: UIButton!
    @IBOutlet var PickerMusic: UIPickerView!
    @IBOutlet var PickerActions: UIPickerView!
    @IBOutlet var labelName: UILabel!
    
    func randomNumber(num: Int) -> Int {
        return Int(arc4random_uniform(UInt32(num)))
    }
    
    func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == PickerMusic{
            return Pickerdata.music[row]
        }
        else {
            return Pickerdata.action[row]
        }
        
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == PickerMusic{
            return Pickerdata.music.count
        }
        else {
            return Pickerdata.action.count
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shameButtonOutlet.isHidden = true
        doneButtonOutlet.isHidden = true
        PickerMusic.dataSource = self
        PickerMusic.delegate = self
        PickerActions.delegate = self
        PickerActions.dataSource = self
        //printName()
        
        labelName.text = text
    }
    
    
    let vc = ViewController()
    
    @IBAction func pressStart() {
        startButtonOutlet.isHidden = true
        shameButtonOutlet.isHidden = false
        doneButtonOutlet.isHidden = false
        
        PickerMusic.selectRow(randomNumber(num: Pickerdata.music.count), inComponent: 0, animated: true)
        PickerActions.selectRow(randomNumber(num: Pickerdata.action.count), inComponent: 0, animated: true)
        
        if vc.audioPlayer.isPlaying{
            vc.audioPlayer.pause()
        }
        else {
            
        }
    }
    @IBAction func pressDone() {
        startButtonOutlet.isHidden = false
        doneButtonOutlet.isHidden = true
        shameButtonOutlet.isHidden = true
        
        let alert = UIAlertController(title: "Alerta", message: "Antes de continuar, tente fazer o 4", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title:"OK", style: .default, handler: nil ))
        
        self.present(alert, animated: true)
        
//        text = playervc.playerTwo.text
    }
    
    let playervc = PlayersViewController()
    
    func printName() {
        //labelName.text = playervc.names[0]
        
    }
    
}
