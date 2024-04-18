//
//  MashasAppApp.swift
//  MashasApp
//
//  Created by Siarhei Wehrhahn on 13.03.24.
//

import SwiftUI

@main
struct MashasAppApp: App {
    @StateObject private var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                if viewRouter.currentPage == .splash {
                    SplashView()
                        .onAppear {
                            // Nach 2 sek den viewRouter auf HomeView setzen
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                withAnimation {
                                    viewRouter.currentPage = .home
                                }
                            }
                        }
                } else if viewRouter.currentPage == .home {
                    HomeView()
                }
            }
            .environmentObject(viewRouter)
        }
    }
}
