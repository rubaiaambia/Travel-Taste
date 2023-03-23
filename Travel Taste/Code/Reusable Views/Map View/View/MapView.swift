//
//  MapView.swift
//  Travel Taste
//
//  Created by Rubaia Ambia on 3/23/23.
//

import SwiftUI
import MapKit

/// UIView Map View wrapped in a SwiftUI container to offer more functionality than its standard SwiftUI counterpart
struct MapView: UIViewRepresentable {
    // MARK: - Properties
    /// The stateful region property the map view uses as the focal point of the view port
    @Binding var region: MKCoordinateRegion
    var userTrackingMode: MKUserTrackingMode = .none
    var showsUserLocation: Bool = true
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context){
        view.setRegion(region, animated: true)
        view.userTrackingMode = userTrackingMode
        view.showsUserLocation = showsUserLocation
    }
    
    func makeCoordinator() -> MapViewCoordinator{
        MapViewCoordinator(coordinate: self)
    }
}
