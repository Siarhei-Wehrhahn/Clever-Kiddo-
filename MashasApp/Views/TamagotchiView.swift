//
//  TamagotchiView.swift
//  MashasApp
//
//  Created by Siarhei Wehrhahn on 12.04.24.
//

import SwiftUI

struct TamagotchiView: View {
    @State private var hungry = 50
    @State private var happines = 50
    @State private var toilet = 50
    @State private var sleep = 50
    
    var body: some View {
        ZStack {
            Image("tamagotchi_bg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            HStack(spacing: 50) {
                VStack{
                    Image("happines")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    Text("\(happines)%")
                        .bold()
                        .font(Font.system(size: 20))
                }
                
                VStack {
                    Image("toilet")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    Text("\(toilet)%")
                        .bold()
                        .font(Font.system(size: 20))
                }
                
                VStack {
                    Image("fedding")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    Text("\(hungry)%")
                        .bold()
                        .font(Font.system(size: 20))
                }
                
                VStack {
                    Image("moon")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    Text("\(sleep)%")
                        .bold()
                        .font(Font.system(size: 20))
                }
            }
            .padding(.bottom,650)
            
            VStack {
                HStack {
                    Button {
                        
                    } label: {
                        Text("Toilette")
                            .frame(width: 120, height: 35)
                            .foregroundStyle(.white)
                            .background(.blue)
                            .clipShape(Capsule())
                            .padding(10)
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Füttern")
                            .frame(width: 120, height: 35)
                            .foregroundStyle(.white)
                            .background(.blue)
                            .clipShape(Capsule())
                            .padding(10)
                    }
                }
                
                HStack {
                    Button {
                        
                    } label: {
                        Text("Spiele")
                            .frame(width: 120, height: 35)
                            .foregroundStyle(.white)
                            .background(.blue)
                            .clipShape(Capsule())
                            .padding(.trailing, 50)
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Schlafen")
                            .frame(width: 120, height: 35)
                            .foregroundStyle(.white)
                            .background(.blue)
                            .clipShape(Capsule())
                            .padding(.leading, 50)
                    }
                }
            }
            .padding(.bottom, 420)
            
            Image("happy")
                .padding(.top, 500)
        }
    }
}

#Preview {
    TamagotchiView()
}

