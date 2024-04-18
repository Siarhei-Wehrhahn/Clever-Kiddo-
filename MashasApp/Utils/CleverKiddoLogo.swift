//
//  cleverKiddoLogo.swift
//  MashasApp
//
//  Created by Siarhei Wehrhahn on 12.04.24.
//

import SwiftUI

func CleverKiddoLogo() -> some View {
    return Text("Clever Kiddo")
        .font(.system(size: 40))
        .fontWeight(.bold)
        .foregroundStyle(Color.black)
        .overlay(
            Text("Clever Kiddo")
                .font(.system(size: 39))
                .fontWeight(.bold)
                .foregroundStyle(
                    LinearGradient(colors: [.red, .green, .blue, .yellow, .brown, .white, .cyan, .gray, .purple, .indigo, .orange], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
        )
}
