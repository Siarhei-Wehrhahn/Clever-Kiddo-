//
//  NumbersView.swift
//  MashasApp
//
//  Created by Siarhei Wehrhahn on 12.04.24.
//

import SwiftUI

struct NumbersView: View {
    @StateObject var viewModel = NumbersViewModel()
    
    var body: some View {
        VStack {
            Text("Drücke auf die \(String(viewModel.targetIndex))!")
                .padding(.top)
                .bold()
                .font(.title)
            
            Text("0")
                .offset(x: 100, y: 54)
                .font(Font.system(size: CGFloat(viewModel.getRaandomTextSize())))
                .opacity(viewModel.isTextVisible0 ? 1.0 : 0.0)
                .onTapGesture {                    viewModel.checkAnswere(index: 0)
                }
            
            Text("1")
                .offset(x: 45, y: 114)
                .font(Font.system(size: CGFloat(viewModel.getRaandomTextSize())))
                .opacity(viewModel.isTextVisible1 ? 1.0 : 0.0)
                .onTapGesture {
                    viewModel.checkAnswere(index: 1)
                }
            
            Text("2")
                .offset(x: 90, y: 504)
                .font(Font.system(size: CGFloat(viewModel.getRaandomTextSize())))
                .opacity(viewModel.isTextVisible2 ? 1.0 : 0.0)
                .onTapGesture {
                    viewModel.checkAnswere(index: 2)
                }
            
            Text("3")
                .offset(x: -90, y: 504)
                .font(Font.system(size: CGFloat(viewModel.getRaandomTextSize())))
                .opacity(viewModel.isTextVisible3 ? 1.0 : 0.0)
                .onTapGesture {
                    viewModel.checkAnswere(index: 3)
                }
            
            Text("4")
                .offset(x: -65, y: 0)
                .font(Font.system(size: CGFloat(viewModel.getRaandomTextSize())))
                .opacity(viewModel.isTextVisible4 ? 1.0 : 0.0)
                .onTapGesture {
                    viewModel.checkAnswere(index: 4)
                }
            
            Text("5")
                .offset(x: 30, y: 204)
                .font(Font.system(size: CGFloat(viewModel.getRaandomTextSize())))
                .opacity(viewModel.isTextVisible5 ? 1.0 : 0.0)
                .onTapGesture {
                    viewModel.checkAnswere(index: 5)
                }
            
            Text("6")
                .offset(x: -90, y: 200)
                .font(Font.system(size: CGFloat(viewModel.getRaandomTextSize())))
                .opacity(viewModel.isTextVisible6 ? 1.0 : 0.0)
                .onTapGesture {
                    viewModel.checkAnswere(index: 6)
                }
            
            Text("7")
                .offset(x: -120, y: -230)
                .font(Font.system(size: CGFloat(viewModel.getRaandomTextSize())))
                .opacity(viewModel.isTextVisible7 ? 1.0 : 0.0)
                .onTapGesture {
                    
                    viewModel.checkAnswere(index: 7)
                }
            
            Text("8")
                .offset(x: 130, y: -40)
                .font(Font.system(size: CGFloat(viewModel.getRaandomTextSize())))
                .opacity(viewModel.isTextVisible8 ? 1.0 : 0.0)
                .onTapGesture {
                    viewModel.checkAnswere(index: 8)
                }
            
            Text("9")
                .offset(x: -130, y: -50)
                .font(Font.system(size: CGFloat(viewModel.getRaandomTextSize())))
                .opacity(viewModel.isTextVisible9 ? 1.0 : 0.0)
                .onTapGesture {
                    viewModel.checkAnswere(index: 9)
                }
            
            Text("10")
                .offset(x: 0, y: -120)
                .font(Font.system(size: CGFloat(viewModel.getRaandomTextSize())))
                .opacity(viewModel.isTextVisible10 ? 1.0 : 0.0)
                .onTapGesture {
                    viewModel.checkAnswere(index: 10)
                }
            
            Spacer()
        }
        .onAppear {
            viewModel.speakText("Drücke auf die \(String(viewModel.targetIndex))!")
        }
        .onChange(of: viewModel.targetIndex) { newValue in
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                viewModel.speakText("Drücke auf die \(String(newValue))!")
            }
        }
        .alert(isPresented: $viewModel.showAlert) {
            Alert(title: Text("Richtig!"), message: Text("Richtig!"), dismissButton: .default(Text("OK")))
        }
    }
}

#Preview {
    NumbersView()
}
