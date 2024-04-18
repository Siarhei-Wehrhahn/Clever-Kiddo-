//
//  SecondRowView.swift
//  MashasApp
//
//  Created by Siarhei Wehrhahn on 13.03.24.
//

import SwiftUI

struct SecondRowView: View {
    @StateObject var viewModel = SoundPlayer()
    
    var body: some View {
        HStack(spacing: 1) {
            SoundButton(viewModel: viewModel, soundName: "Lion", imageName: "löwe", width: 110, height: 80)
                .rotation3DEffect(.degrees(30), axis: (x: 0.0, y: 1.0, z: 0.1))
            
            SoundButton(viewModel: viewModel, soundName: "Pig", imageName: "schwein", width: 100, height: 80)
                .rotation3DEffect(.degrees(20), axis: (x: 0.0, y: -1.0, z: 0.0))
            
            SoundButton(viewModel: viewModel, soundName: "Cow", imageName: "kuh", width: 100, height: 100)
                .padding(.leading, 20)
        }
    }
}

#Preview {
    SecondRowView()
}
