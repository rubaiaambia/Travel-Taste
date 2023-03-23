//
//  MainScreen.swift
//  Travel Taste
//
//  Created by Rubaia Ambia on 3/22/23.
//

import SwiftUI
import MapKit

struct MainScreen: View {
    // MARK: - Observed
    @StateObject var vm: MainScreenViewModel
    @StateObject var locationManager: LocationManager = .shared
    
    var body: some View {
        mainSection
    }
}

// MARK: - View Sections
extension MainScreen {
    var mainSection: some View {
        ZStack {
            mapView
        }
    }
}

// MARK: - Subviews
extension MainScreen {
    var mapView: some View {
        MapView(region: $locationManager.region)
            .ignoresSafeArea()
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen(vm: .init())
    }
}
