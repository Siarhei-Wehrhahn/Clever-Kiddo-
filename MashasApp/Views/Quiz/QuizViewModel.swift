//
//  QuizViewModel.swift
//  MashasApp
//
//  Created by Siarhei Wehrhahn on 12.04.24.
//

import Foundation
import AVFoundation

class QuizViewModel: ObservableObject {
    @Published var quizOptions: [String] = []
    @Published var selectedAnswer: String?
    @Published var correctAnswer = ""
    @Published var answeres = []
    @Published var showAnswere = true
    @Published var showAnswere1 = true
    @Published var showAnswere2 = true
    @Published var showAnswere3 = true
    var audioPlayer: AVPlayer!
    
    func playSound(soundName: String) {
        guard let soundURL = Bundle.main.url(forResource: soundName, withExtension: "mp3") else {
            return
        }
        
        audioPlayer = AVPlayer(url: soundURL)
        audioPlayer?.play()
    }
    
    private var vegetables: [(name: String, article: String)] = [
        ("Apfel", "den"), ("Blumenkohl", "den"), ("Broccoli", "den"), ("Erbsen", "die"), ("Erdbeere", "die"),
        ("Granatapfel", "den"), ("Gurke", "die"), ("Kiwi", "die"), ("Kopfsalat", "den"), ("Mais", "den"),
        ("Radieschen", "die"), ("Rosenkohl", "den"), ("Tomate", "die"), ("Weintrauben", "die"), ("Zwiebeln", "die")
    ].shuffled()
    
    private var randomAnswer: String {
        return vegetables.map { $0.name }.randomElement()!
    }
    
    init() {
        let correctAnswer = randomAnswer
        var options = Set<String>()
        options.insert(correctAnswer)
        self.correctAnswer = correctAnswer
        
        while options.count < 4 {
            options.insert(self.randomAnswer)
        }
        
        quizOptions.insert(contentsOf: options, at: 0)
    }
    
    func resetQuiz() {
        // Setze die Eigenschaften zurück
        selectedAnswer = nil
        correctAnswer = ""
        showAnswere = true
        showAnswere1 = true
        showAnswere2 = true
        showAnswere3 = true
        
        // Erstelle neue Quiz-Optionen
        let newCorrectAnswer = randomAnswer
        var options = Set<String>()
        options.insert(newCorrectAnswer)
        correctAnswer = newCorrectAnswer
        
        while options.count < 4 {
            options.insert(randomAnswer)
        }
        
        quizOptions = Array(options)
    }
    
    func checkAnswere() -> Bool {
        if selectedAnswer == correctAnswer {
            playSound(soundName: "Win")
            return true
        } else {
            playSound(soundName: "Lose")
            return false
        }
    }
    
    func getArticle(for word: String) -> String? {
        return vegetables.first { $0.name.lowercased() == word.lowercased() }?.article
    }
}
