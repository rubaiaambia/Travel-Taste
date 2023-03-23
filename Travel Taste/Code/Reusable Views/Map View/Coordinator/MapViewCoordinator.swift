//
//  MapViewCoordinator.swift
//  Travel Taste
//
//  Created by Rubaia Ambia on 3/23/23.
//

import MapKit
import SwiftUI

/// This coordinator object is the acting delegate for map kit view
class MapViewCoordinator: NSObject, MKMapViewDelegate {
    var coordinatedView: MapView
    
    init(coordinate mapView: MapView) {
        self.coordinatedView = mapView
    }
    
    /** Generates an optional annotation view using the provided assets and logic */
    func mapView(_ mapView: MKMapView, viewFor
                 annotation: MKAnnotation) -> MKAnnotationView?{
        return nil
    }
}
