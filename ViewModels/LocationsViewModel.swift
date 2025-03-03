//
//  LocationsViewModel.swift
//  SwiftfulMapApp
//
//  Created by Chris Lee on 3/3/25.
//

import Foundation

class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location] = []
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
    
}
