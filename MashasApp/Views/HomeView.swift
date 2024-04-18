//
//  HomeView.swift
//  MashasApp
//
//  Created by Siarhei Wehrhahn on 12.04.24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                CleverKiddoLogo()
                    .padding(.top, 55)
                    .padding(.bottom, 25)
                
                CustomButton(destination: ColorsView(), text: "Farben", foregroundColor: Color.white, background: Color(red: 1.0, green: 0.0, blue: 0.0))
                
                CustomButton(destination: NumbersView(), text: "Zahlen", foregroundColor: Color.black, background: Color.orange)
                
                CustomButton(destination: PetSoundView(), text: "Tiere", foregroundColor: Color.black, background: Color.yellow)
                
                CustomButton(destination: CookieView(), text: "Drück den Cookie", foregroundColor: Color.white, background: Color.green)
                
                CustomButton(destination: QuizView(), text: "Quiz", foregroundColor: .white, background: .blue)
                
                Spacer()
                
//                HStack {
//                    NavigationLink(destination: TamagotchiView()) {
//                        Image("happy")
//                            .resizable()
//                            .frame(width: 40, height: 40)
//                            .padding(12)
//                            .background(.teal)
//                            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 30.0, height: 30.0)))
//                            .padding(.trailing, 10)
//                    }
//                    
//                    NavigationLink(destination: ShopView()){
//                        Image(systemName: "cart.fill")
//                                .font(.system(size: 30))
//                                .foregroundColor(.white)
//                                .padding(12)
//                                .background(Color.teal)
//                                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 30.0, height: 30.0)))
//                                .padding(.trailing, 210)
//                                
//                    }
//                }
            }
        }
    }
}

#Preview {
    HomeView()
}

