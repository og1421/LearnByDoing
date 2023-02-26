//
//  PlaySounds.swift
//  LearnbyDoing
//
//  Created by Orlando Moraes Martins on 26/02/23.
//

import Foundation
import AVFoundation

//MARK: - Audio Player

var audioPlayer: AVAudioPlayer?

func playSound(soundName: String, type: String) {
    if let path = Bundle.main.path(forResource: soundName, ofType: type){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not find and play the sound file.")
        }
    }
}
