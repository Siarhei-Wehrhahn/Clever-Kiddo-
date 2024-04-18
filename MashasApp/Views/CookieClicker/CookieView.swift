//
//  CookieView.swift
//  MashasApp
//
//  Created by Siarhei Wehrhahn on 12.04.24.
//

import SwiftUI

// TODO: Hintergrund einfügen mit animierter person die isst
struct CookieView: View {
    @State private var counter = 0
    @State private var position: CGPoint = .zero
    
    let screedWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    var body: some View {
        VStack {
            Text("Counter: \(counter)")
                .bold()
                .font(Font.system(size: 30))
            Button {
                counter += 1
                updatePosition()
            } label: {
                Image(.cookie)
                    .resizable()
                    .frame(width: 100, height: 100)
            }
            .position(position)
        }
    }
    
    
    private func updatePosition() {
        position = CGPoint(x: CGFloat.random(in: 0...(screedWidth - 100)), y: CGFloat.random(in: 0...(screenHeight - 150)))
    }
}

#Preview {
    CookieView()
}
