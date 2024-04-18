//
//  QuizView.swift
//  MashasApp
//
//  Created by Siarhei Wehrhahn on 12.04.24.
//

import SwiftUI
import AVFoundation

struct QuizView: View {
    @StateObject private var viewModel = QuizViewModel()
    
    var body: some View {
        ZStack {
            Image("quiz")
                .resizable()
                .scaledToFill()
                .padding(.trailing, 120)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Drücke auf \(viewModel.getArticle(for: viewModel.correctAnswer) ?? "") \(viewModel.correctAnswer)")
                    .bold()
                    .font(Font.system(size: 30))
                    .padding(.top, 50)
                    .foregroundStyle(.white)

                
                Spacer()
                
                VStack(spacing: 70) {
                    HStack(spacing: 70) {
                        if viewModel.showAnswere {
                            Button {
                                viewModel.selectedAnswer = viewModel.quizOptions[0]
                                if viewModel.checkAnswere() {
                                    viewModel.resetQuiz()
                                } else {
                                    viewModel.showAnswere = false
                                }
                                print(viewModel.quizOptions)
                            } label: {
                                Image(viewModel.quizOptions[0])
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .scaledToFit()
                            }
                            
                        }
                        
                        if viewModel.showAnswere1 {
                            Button {
                                viewModel.selectedAnswer = viewModel.quizOptions[1]
                                if viewModel.checkAnswere() {
                                    viewModel.resetQuiz()
                                } else {
                                    viewModel.showAnswere1 = false
                                }
                            } label: {
                                Image(viewModel.quizOptions[1])
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .scaledToFit()
                            }
                        }
                    }
                    
                    HStack(spacing: 70) {
                        if viewModel.showAnswere2 {
                            Button {
                                viewModel.selectedAnswer = viewModel.quizOptions[2]
                                if viewModel.checkAnswere() {
                                    viewModel.resetQuiz()
                                } else {
                                    viewModel.showAnswere2 = false
                                }
                            } label: {
                                Image(viewModel.quizOptions[2])
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .scaledToFit()
                            }
                        }
                        
                        if viewModel.showAnswere3 {
                            Button {
                                viewModel.selectedAnswer = viewModel.quizOptions[3]
                                if viewModel.checkAnswere() {
                                    viewModel.resetQuiz()
                                } else {
                                    viewModel.showAnswere3 = false
                                }
                            } label: {
                                Image(viewModel.quizOptions[3])
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .scaledToFit()
                            }
                        }
                    }
                }
            }
        }
        .background(Color.black)
        .foregroundColor(.white)
    }
}



#Preview {
    QuizView()
}
