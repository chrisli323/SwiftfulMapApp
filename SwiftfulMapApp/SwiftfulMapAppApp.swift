//
//  SwiftfulMapAppApp.swift
//  SwiftfulMapApp
//
//  Created by Chris Lee on 2/22/25.
//

import SwiftUI

@main
struct SwiftfulMapAppApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
        }
        .environmentObject(vm)
    }
}
