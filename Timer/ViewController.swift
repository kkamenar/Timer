//
//  ViewController.swift
//  Timer
//
//  Created by Kristin Kamenar on 6/24/16.
//  Copyright © 2016 Kristin Kamenar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var countingLabel: UILabel!
    
    //create an instance of NSTimer
    var SwiftTimer = NSTimer()
    
    //Display the swift tmer number to the user
    var SwiftCounter = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

        countingLabel.text = String(SwiftCounter)
    }
    
    @IBAction func startButton(sender: AnyObject) {
        
        //Variable to define number of seconds between firings of timer
        let TIME_INCREMENT = 1.0
        
        
        //run every 1 second; call a function called updateCounter; repeat
        SwiftTimer = NSTimer.scheduledTimerWithTimeInterval(TIME_INCREMENT, target: self, selector: #selector(ViewController.updateCounter), userInfo: nil, repeats: true)
    }
    
    func updateCounter()
    {
        SwiftCounter+=1
        countingLabel.text = String(SwiftCounter)
        print(SwiftCounter)
    }
    

    @IBAction func pauseButton(sender: AnyObject) {
        
        SwiftTimer.invalidate()
    }
    
    @IBAction func clearButton(sender: AnyObject) {
        
        SwiftTimer.invalidate()
        SwiftCounter = 0
        countingLabel.text = String(SwiftCounter)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

