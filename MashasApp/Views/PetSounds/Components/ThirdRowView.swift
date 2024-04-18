//
//  ThirdRowView.swift
//  MashasApp
//
//  Created by Siarhei Wehrhahn on 13.03.24.
//

import SwiftUI
import AVFoundation

struct ThirdRowView: View {
    @StateObject var viewModel = SoundPlayer()
    
    var body: some View {
        HStack(spacing: 1) {
            SoundButton(viewModel: viewModel, soundName: "Elephant", imageName: "elefant", width: 120, height: 100)
            
            SoundButton(viewModel: viewModel, soundName: "Dog", imageName: "hund", width: 120, height: 100)
            
            SoundButton(viewModel: viewModel, soundName: "Cat", imageName: "katze", width: 120, height: 100)
        }
        .padding()
    }
}

#Preview {
    ThirdRowView()
}
