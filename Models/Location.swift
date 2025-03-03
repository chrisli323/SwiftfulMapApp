//
//  Location.swift
//  SwiftfulMapApp
//
//  Created by Chris Lee on 2/22/25.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    //Identifiable
    
    //bad - creates a random ID each time we loop. if we loop on same location twice in will create a different ID for the location and we want the ID to be the same so the location will be identifiable to the compiler
    //let id: String = UUID().uuidString
    
    var id: String {
        name + cityName
    }
}
