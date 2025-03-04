//
//  LocationsViewModel.swift
//  SwiftfulMapApp
//
//  Created by Chris Lee on 3/3/25.
//

import Foundation

class LocationsViewModel: ObservableObject {
    
    // All loaded locations
    @Published var locations: [Location] = []
    
    @Published var mapLocation: Location
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
    }
    
}
