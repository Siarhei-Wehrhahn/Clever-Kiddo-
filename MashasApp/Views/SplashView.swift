//
//  SplashView.swift
//  MashasApp
//
//  Created by Siarhei Wehrhahn on 12.04.24.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                CleverKiddoLogo()
                Text("Farben, Zahlen, Tiere & mehr")
                    .font(.system(size: 18))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(Color.black)
                    .overlay(
                        Text("Farben, Zahlen, Tiere & mehr")
                            .font(.system(size: 17.6))
                            .fontWeight(.bold)
                            .foregroundStyle(
                                LinearGradient(colors: [.red, .green, .blue, .yellow, .brown, .white, .cyan, .gray, .purple, .indigo, .orange], startPoint: .topLeading, endPoint: .bottomTrailing)
                            ))
            }
            .padding()
        }
    }
}

#Preview {
    SplashView()
}
