//
//  TravelTasteApp.swift
//  Travel Taste
//
//  Created by Rubaia Ambia on 3/22/23.
//

import SwiftUI

@main
struct TravelTasteApp: App {
    // MARK: - Properties
    var appService: AppService = .shared
    
    var body: some Scene {
        WindowGroup {
            appService.appScene
        }
    }
}
