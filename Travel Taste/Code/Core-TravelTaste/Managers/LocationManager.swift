//
//  LocationManager.swift
//  Travel Taste
//
//  Created by Rubaia Ambia on 3/22/23.
//

import Combine
import CoreLocation
import MapKit
import _MapKit_SwiftUI

/// Manager instance that simplifies interfacing with the required mapkit and core location functionalities
@MainActor class LocationManager: NSObject, ObservableObject {
    // MARK: - Properties
    private let manager = CLLocationManager(),
                desiredAccuracy: CLLocationAccuracy = kCLLocationAccuracyBest
    
    var showUserLocation: Bool = false,
        // Zoom level
        coordinateSpan: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.1,
                                                            longitudeDelta: 0.1)
    
    /// Default region to use when the user hasn't granted permission to use their location ~ New York
    private var defaultRegion: MKCoordinateRegion {
        return .init(center: .init(latitude: 40.7694785,
                                   longitude: -73.9826549),
                     span: coordinateSpan)
    }
    
    // MARK: - Published
    @Published var region = MKCoordinateRegion()
    @Published var userTrackingMode: MapUserTrackingMode = .follow
    
    // MARK: - Singleton
    static let shared: LocationManager = .init()
    
    private override init() {
        super.init()
        setup()
    }
    
    /** Set delegate and desired location accuracy settings */
    private func setup() {
        manager.delegate = self
        manager.desiredAccuracy = desiredAccuracy
        self.region = defaultRegion
    }
    
    /** Request user location permission if not already granted and start updating the user's current location */
    func start() {
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }
}

// Delegate Implementation
extension LocationManager: CLLocationManagerDelegate {
    /// Track the user's location by parsing the latest location from the update buffer
    @MainActor func locationManager(_ manager: CLLocationManager,
                                    didUpdateLocations locations: [CLLocation]) {
        locations.last.map {
            region = MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: $0.coordinate.latitude,
                                               longitude: $0.coordinate.longitude),
                span: coordinateSpan
            )
        }
    }
}

