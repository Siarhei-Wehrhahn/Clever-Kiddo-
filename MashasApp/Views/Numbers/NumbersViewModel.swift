//
//  NumbersViewModel.swift
//  MashasApp
//
//  Created by Siarhei Wehrhahn on 12.04.24.
//

import Foundation
import AVFAudio
import AVFoundation

class NumbersViewModel: ObservableObject {
    @Published var targetIndex = Int.random(in: 0...10)
    @Published var textSize = Int.random(in: 16...50)
    @Published var randomTextSizes = Set<Int>()
    @Published var showAlert = false
    @Published var numbersArray = Array(0...10).shuffled()
    @Published var isTextVisible0 = true
    @Published var isTextVisible1 = true
    @Published var isTextVisible2 = true
    @Published var isTextVisible3 = true
    @Published var isTextVisible4 = true
    @Published var isTextVisible5 = true
    @Published var isTextVisible6 = true
    @Published var isTextVisible7 = true
    @Published var isTextVisible8 = true
    @Published var isTextVisible9 = true
    @Published var isTextVisible10 = true
    var audioPlayer: AVPlayer!
    let speechSynthesizer = AVSpeechSynthesizer()
    
    func speakText(_ text: String) {
        let speechUtterance = AVSpeechUtterance(string: text)
        speechUtterance.voice = AVSpeechSynthesisVoice(identifier: "com.apple.voice.compact.de-DE.Anna") // Ändere die Stimme durch Angabe des Identifiers
        speechUtterance.rate = 0.2
        
        speechSynthesizer.speak(speechUtterance)
    }
    
    func getRaandomTextSize() -> Int {
        var randomSize = Int.random(in: 16...50)
        while randomTextSizes.contains(randomSize) {
            randomSize = Int.random(in: 16...50)
            randomTextSizes.insert(randomSize)
        }
        return randomSize
    }
    
    func checkAnswere(index: Int) {
        if index == targetIndex {
            self.playSound(soundName: "Win")
            showAlert = true
            targetIndex = Int.random(in: 0...10)
            
            isTextVisible0 = true
            isTextVisible1 = true
            isTextVisible2 = true
            isTextVisible3 = true
            isTextVisible4 = true
            isTextVisible5 = true
            isTextVisible6 = true
            isTextVisible7 = true
            isTextVisible8 = true
            isTextVisible9 = true
            isTextVisible10 = true
        } else {
            self.playSound(soundName: "Lose")
            switch index {
            case 0:
                isTextVisible0 = false
            case 1:
                isTextVisible1 = false
            case 2:
                isTextVisible2 = false
            case 3:
                isTextVisible3 = false
            case 4:
                isTextVisible4 = false
            case 5:
                isTextVisible5 = false
            case 6:
                isTextVisible6 = false
            case 7:
                isTextVisible7 = false
            case 8:
                isTextVisible8 = false
            case 9:
                isTextVisible9 = false
            case 10:
                isTextVisible10 = false
            default: break
            }
        }
    }
    
    func playSound(soundName: String) {
        guard let soundURL = Bundle.main.url(forResource: soundName, withExtension: "mp3") else {
            return
        }
        
        audioPlayer = AVPlayer(url: soundURL)
        audioPlayer?.play()
    }
}

