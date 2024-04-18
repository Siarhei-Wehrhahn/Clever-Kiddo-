//
//  CustomButton.swift
//  MashasApp
//
//  Created by Siarhei Wehrhahn on 12.04.24.
//

import SwiftUI
struct CustomButton<Content: View>: View {
    var destination: Content
    var text: String
    var foregroundColor: Color
    var background: Color
    
    init(destination: Content, text: String, foregroundColor: Color, background: Color) {
        self.destination = destination
        self.text = text
        self.foregroundColor = foregroundColor
        self.background = background
    }

    var body: some View {
        NavigationLink(destination: destination) {
            Text(text)
                .frame(width: 200)
                .padding(10)
                .foregroundStyle(foregroundColor)
                .background(background)
                .cornerRadius(30)
        }
        .padding(.top, 20)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(destination: Text("Destination View"), text: "Farben", foregroundColor: .white, background: .blue)
    }
}
