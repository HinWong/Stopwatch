//
//  ViewController.swift
//  Stopwatch
//
//  Created by Hin Wong on 2/9/20.
//  Copyright © 2020 Hin Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var milliseconds = 0.00
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func startButton(_ sender: Any) {
        
        // Creates timer
        timer = Timer.scheduledTimer(timeInterval: 0.001, target: self, selector: #selector(timerElapsed), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pauseButton(_ sender: Any) {
        timer.invalidate()
        
    }
    
    // Sets the timer back to 0
    @IBAction func resetButton(_ sender: Any) {
        timer.invalidate()
        milliseconds = 0
        timerLabel.text = String(milliseconds)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @objc func timerElapsed () {
         milliseconds += 1
        
        // Convert to seconds
        let seconds = String(format: "%.2f", milliseconds/1000)
        
        // Set label
        timerLabel.text = "\(seconds)"
    }

}

