//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft":5*60, "Medium":7*60, "Hard":12*60]
    var totalTime = 0.0
    var secondsPassed = 0.0
    var secondsRemaining = 60
    var timer = Timer()
    var player: AVAudioPlayer!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
    
        timer.invalidate()//resets the timer
        let hardness = sender.currentTitle!
        totalTime = Double(eggTimes[hardness]!)
        progressBar.progress = 0.0//resets progress bar value
        secondsPassed = 0.0//set seconds passed back to xero
        titleLabel.text = hardness
       timer =  Timer.scheduledTimer(timeInterval: 1.0, target:self, selector: #selector(updateTimer), userInfo: nil, repeats: true)//starts a timer which fires every 1s, calls the updatetimer function and repeats every second
    }
    
    @objc func updateTimer(){
        if secondsPassed <= totalTime {
            let percentageProgress = secondsPassed/totalTime
            secondsPassed+=1
            progressBar.progress = Float((percentageProgress))//changes the progress bar every second depeding upon secondspassed and total time
            
        } else{
            timer.invalidate()//reset timer when secondspassed ==0
            titleLabel.text = "Done"
            playSound()
        }
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
}
