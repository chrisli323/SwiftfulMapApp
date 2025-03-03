//
//  LocationsView.swift
//  SwiftfulMapApp
//
//  Created by Chris Lee on 3/3/25.
//

import SwiftUI

class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location] = []
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
    
}

struct LocationsView: View {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some View {
        ForEach(vm.locations) { location in
            Text(location.name)
        }
    }
}

#Preview {
    LocationsView()
}
