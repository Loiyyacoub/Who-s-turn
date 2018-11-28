//
//  ViewController.swift
//  Rock
//
//  Created by Loai Yacoub on 9/20/18.
//  Copyright © 2018 LoaiYacoub. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBoxIndex1 : Int = 0
    var randomBoxIndex2 : Int = 0
    
    let boxArray = ["rock", "paper", "scissor"]
    @IBOutlet weak var boxImageView1: UIImageView!
    @IBOutlet weak var boxImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateImage()

    }

    @IBAction func playButtonPressed(_ sender: UIButton) {
        updateImage()
    
    }
    
    func updateImage(){
        
        randomBoxIndex1 = Int(arc4random_uniform(3))
        randomBoxIndex2 = Int(arc4random_uniform(3))
        
        boxImageView1.image = UIImage(named: boxArray[randomBoxIndex1])
        boxImageView2.image = UIImage(named: boxArray[randomBoxIndex2])
    }
}

