//
//  AppService.swift
//  Travel Taste
//
//  Created by Rubaia Ambia on 3/23/23.
//

import SwiftUI

/// Contains relevant app specific functionalities and general navigation constants for this single page application
@MainActor class AppService {
    // MARK: - Singleton
    static let shared: AppService = .init()
    
    // MARK: - Navigation Logic
    let mainScreenViewModel: MainScreenViewModel = .init()
    
    /// The central scene from which all screens are displayed
    var appScene: AnyView {
        return AnyView(MainScreen(vm: self.mainScreenViewModel))
    }
    
    private init() {}
}
