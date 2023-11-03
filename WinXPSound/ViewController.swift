//
//  ViewController.swift
//  WinXPSound
//
//  Created by Anu on 02/11/23.
//

import Cocoa
import AVFoundation


class ViewController: NSViewController, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        print("Working")
        
        guard let url = Bundle.main.url(forResource: "windows-xp-startup-sound", withExtension: "mp3") else {
            print("Sound file not found")
            return
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {
            print("Error playing sound: \(error.localizedDescription)")
        }
        
        
    }
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
            if flag {
                print("Playback finished successfully.")
            } else {
                print("Playback did not finish successfully.")
            }
        }


}

