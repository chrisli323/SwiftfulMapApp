//
//  LocationsViewModel.swift
//  SwiftfulMapApp
//
//  Created by Chris Lee on 3/3/25.
//

import Foundation
import MapKit
import _MapKit_SwiftUI

class LocationsViewModel: ObservableObject {
    
    // All loaded Location objects
    @Published var locations: [Location] = []
    
    // Current location
    @Published var mapLocation: Location
    
    // Coordinate and span positioning data from Location object
    @Published var mapPosition: MapCameraPosition
    
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        
        // Initialize mapPosition with the first location
        let region = MKCoordinateRegion(
            center: locations.first!.coordinates,
            span: mapSpan)
        self.mapPosition = MapCameraPosition.region(region)
    }
    
    private func updateMapPosition(location: Location) {
        let region = MKCoordinateRegion(
            center: location.coordinates,
            span: mapSpan
        )
        self.mapPosition = MapCameraPosition.region(region)
    }
}
