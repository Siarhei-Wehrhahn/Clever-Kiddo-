//
//  SoundButton.swift
//  MashasApp
//
//  Created by Siarhei Wehrhahn on 17.03.24.
//

import SwiftUI
import AVFoundation

struct SoundButton: View {
    @ObservedObject var viewModel: SoundPlayer
    let soundName: String
    let imageName: String
    let width: CGFloat
    let height: CGFloat

    init(viewModel: SoundPlayer, soundName: String, imageName: String, width: CGFloat, height: CGFloat) {
        self.viewModel = viewModel
        self.soundName = soundName
        self.imageName = imageName
        self.width = width
        self.height = height
    }

    var body: some View {
        Button(action: {
            viewModel.playSound(soundName: soundName)
        }) {
            Image(imageName)
                .resizable()
                .frame(width: width, height: height)
                .scaledToFit()
        }
    }
}


#Preview {
    SoundButton(viewModel: SoundPlayer(), soundName: "elefantSound", imageName: "elefant", width: 140, height: 100)
}
