//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //Prepare the CD-Player
    var audioPlayer : AVAudioPlayer!
    
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(soundFileName: soundArray[sender.tag - 1])
        
    }
    
    func playSound(soundFileName : String) {
        //Create a reference to where audio file is located - This is like a CD where the audios are stored
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        //Open the CD-Player and place the CD inside
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        //Now play the CD
        audioPlayer.play()
    }
    
    
    
    
    
    
    
}

/*
 
 func playSound() {
 let path = Bundle.main.path(forResource: "note1.wav", ofType:nil)!
 let url = URL(fileURLWithPath: path)
 
 do {
 soundEffect = try AVAudioPlayer(contentsOf: url)
 soundEffect?.play()
 } catch {
 print("no sound")
 }
 }
 */
