//
//  ColorsView.swift
//  MashasApp
//
//  Created by Siarhei Wehrhahn on 12.04.24.
//

import SwiftUI

struct ColorsView: View {
    let colors: [Color] = [.red, .green, .blue, .yellow, .purple, .pink, .black, .brown, .cyan, .gray, .orange, .white]
    let colorNamesDE = ["Rot", "Grün", "Blau", "Gelb", "Lila", "Pink", "Schwarz", "Braun", "Cyan", "Grau", "Orange", "Weiß"]

    @State private var colorIndex: Int = 0
    @State private var tappedColorIndex: Int? = nil
    @StateObject private var viewModel = NumbersViewModel()

    var body: some View {
        ZStack {
            Rectangle()
                .fill(colors[colorIndex])
                .edgesIgnoringSafeArea(.all)
                .gesture(DragGesture()
                    .onEnded { gesture in
                        withAnimation {
                            if gesture.translation.width > 0 {
                                // Swipe nach rechts
                                self.colorIndex = (self.colorIndex + 1) % self.colors.count
                            } else {
                                // Swipe nach links
                                self.colorIndex = (self.colorIndex - 1 + self.colors.count) % self.colors.count
                            }
                        }
                    }
                )
            VStack {
                Spacer()
                
                if let tappedColorIndex = tappedColorIndex {
                    Text(colorNamesDE[tappedColorIndex].uppercased())
                        .font(.system(size: 30))
                        .foregroundColor(colors[colorIndex] == .black ? .white : .black)
                        .opacity(1.0)
                        .onAppear {
                            viewModel.speakText(colorNamesDE[tappedColorIndex])
                            // Starten des Timers, um den tappedColorIndex zurückzusetzen
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                                self.tappedColorIndex = nil
                            }
                        }
                } else {
                    Text("Tippe!")
                        .font(.system(size: 30))
                        .opacity(0.4)
                        .foregroundColor(colors[colorIndex] == .black ? .white : .black)
                        .onTapGesture {
                            self.tappedColorIndex = colorIndex
                        }
                }
                Spacer()
                Text("Wische um die Farben zu ändern")
                    .opacity(0.4)
                    .foregroundColor(colors[colorIndex] == .black ? .white : .black)
            }
        }
    }
}

#Preview {
    ColorsView()
}

