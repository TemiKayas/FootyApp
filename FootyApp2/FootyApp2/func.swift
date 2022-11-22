//
//  func.swift
//  TalkingFooty
//
//  Created by Artemios Kayas on 10/10/22.
//

import Foundation
import Swift
import AVFoundation

//var player: AVAudioPlayer?
var sound: AVAudioPlayer?

    func playSound(){
    
    let sounds = ["whatup.mp3", "brainbrain.mp3", "cookies.mp3", "damnit.mp3", "sick.mp3", "smackthat.mp3"]
    
    let x = Int.random(in: 0...((sounds.count)-1))
    
    
    let path1 = Bundle.main.path(forResource: sounds[x], ofType:nil)!
    let url = URL(fileURLWithPath: path1)
    
    
    do {
        sound = try AVAudioPlayer(contentsOf: url)
        sound?.play()
    } catch {
        print ("couldn't load file :(")
    }
    
}
