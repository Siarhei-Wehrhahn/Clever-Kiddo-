//
//  FirstRowView.swift
//  MashasApp
//
//  Created by Siarhei Wehrhahn on 13.03.24.
//

import SwiftUI

struct FirstRowView: View {
    @StateObject var viewModel = SoundPlayer()
    
    var body: some View {
        HStack(spacing: 45) {
            SoundButton(viewModel: viewModel, soundName: "Owl", imageName: "eule", width: 100, height: 100)
            
            SoundButton(viewModel: viewModel, soundName: "Horse", imageName: "pferd", width: 60, height: 110)
            
            SoundButton(viewModel: viewModel, soundName: "Rabbit", imageName: "hase", width: 100, height: 100)
        }
    }
}

#Preview {
    FirstRowView()
}
