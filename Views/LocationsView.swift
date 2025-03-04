//
//  LocationsView.swift
//  SwiftfulMapApp
//
//  Created by Chris Lee on 3/3/25.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    @State private var cameraPosition: MapCameraPosition = {
            let region = MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
            return MapCameraPosition.region(region)
        }()
    
    var body: some View {
        ZStack {
            Map(position: $cameraPosition)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}
