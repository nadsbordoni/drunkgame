//
//  ViewController.swift
//  DrinkGame
//
//  Created by Nádia Bordoni on 28/08/20.
//  Copyright © 2020 Nádia Bordoni. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation

class ViewController: UIViewController {
    
    public var audioPlayer: AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        do {
            
            let bundle = Bundle.main.path(forResource: "backgroundMusic", ofType: "mp3")
            try audioPlayer = AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: bundle!) as URL)
            audioPlayer.prepareToPlay()
        }
        catch {
            print (error)
        }
        
        audioPlayer.play()
        
        
//        let alert = UIAlertController(title: "Alerta", message: "Cuidado pra não dar pt", preferredStyle: .alert)
//        
//        alert.addAction(UIAlertAction(title:"OK", style: .default, handler: nil ))
//        
//        self.present(alert, animated: true)
    }
    
}
