//
//  ViewRouter.swift
//  MashasApp
//
//  Created by Siarhei Wehrhahn on 12.04.24.
//

import SwiftUI

enum Page {
    case splash
    case home
}

class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .splash
}
