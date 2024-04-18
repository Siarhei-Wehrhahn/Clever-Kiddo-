//
//  PetSoundView.swift
//  MashasApp
//
//  Created by Siarhei Wehrhahn on 13.03.24.
//

import SwiftUI

struct PetSoundView: View {
    var body: some View {
        ZStack {
            Image(.bg)
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 50) {
                FirstRowView()
                
                SecondRowView()
                
                ThirdRowView()
            }
        }
    }
}

#Preview {
    PetSoundView()
}
