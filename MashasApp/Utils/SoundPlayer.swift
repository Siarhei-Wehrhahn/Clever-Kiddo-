//
//  ViewModel.swift
//  MashasApp
//
//  Created by Siarhei Wehrhahn on 17.03.24.
//

import SwiftUI
import AVFoundation

class SoundPlayer: ObservableObject {
    var audioPlayer: AVPlayer!
    
    func playSound(soundName: String) {
        guard let soundURL = Bundle.main.url(forResource: soundName, withExtension: "mp3") else {
            return
        }
        
        audioPlayer = AVPlayer(url: soundURL)
        audioPlayer?.play()
    }
}
