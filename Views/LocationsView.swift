//
//  LocationsView.swift
//  SwiftfulMapApp
//
//  Created by Chris Lee on 3/3/25.
//

import SwiftUI

struct LocationsView: View {
    
    @EnvironmentObject var vm: LocationsViewModel
    
    var body: some View {
        List {
            ForEach(vm.locations) {
                Text($0.id)
            }
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}
