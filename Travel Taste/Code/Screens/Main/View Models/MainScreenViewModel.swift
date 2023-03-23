//
//  MainScreenViewModel.swift
//  Travel Taste
//
//  Created by Rubaia Ambia on 3/22/23.
//

import SwiftUI
import MapKit

@MainActor class MainScreenViewModel: ObservableObject {
    // MARK: - Properties
    let locationManager: LocationManager = .shared
    
    init() {
        setup()
    }
    
    private func setup() {
        locationManager.start()
    }
}
