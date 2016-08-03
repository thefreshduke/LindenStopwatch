//
//  ViewController.swift
//  LindenStopwatch
//
//  Created by Scotty Shaw on 8/3/16.
//  Copyright © 2016 ___sks6___. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    
    @IBAction func startTime(sender: AnyObject) {
        timeLabel.text = "start"
        alternateButtons()
    }
    
    @IBAction func stopTime(sender: AnyObject) {
        timeLabel.text = "stop"
        alternateButtons()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        stopButton.hidden = true
        stopButton.enabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func alternateButtons() {
        startButton.hidden = !startButton.hidden
        startButton.enabled = !startButton.enabled
        stopButton.hidden = !stopButton.hidden
        stopButton.enabled = !stopButton.enabled
    }
}

