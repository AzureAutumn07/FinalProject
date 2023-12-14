//
//  MapView.swift
//  Africa
//
//  Created by Mark Nair on 12/5/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var location: MapCameraPosition = .automatic
    
    var body: some View {
        Text("Map")
            .font(.largeTitle)
        Map(position: $location){
            Marker("Zebra", coordinate: CLLocationCoordinate2D(latitude: -32.1410, longitude: 25.5096))
            
            Marker("Lion", coordinate: CLLocationCoordinate2D(latitude: 3.1624, longitude: 18.5096))
            
//            Marker("Rhino", coordinate: CLLocationCoordinate2D(latitude: -32.1410, longitude: 25.5096))
            
//            Marker("Elephant", coordinate: CLLocationCoordinate2D(latitude: -32.1410, longitude: 25.5096))
            
//            Marker("Cheetah", coordinate: CLLocationCoordinate2D(latitude: -32.1410, longitude: 25.5096))
            
//            Marker("Giraffe", coordinate: CLLocationCoordinate2D(latitude: -32.1410, longitude: 25.5096))
            
//            Marker("Buffalo", coordinate: CLLocationCoordinate2D(latitude: -32.1410, longitude: 25.5096))
            
//            Marker("Hippo", coordinate: CLLocationCoordinate2D(latitude: -32.1410, longitude: 25.5096))
            
//            Marker("WildDog", coordinate: CLLocationCoordinate2D(latitude: -32.1410, longitude: 25.5096))
            
//            Marker("Meerkats", coordinate: CLLocationCoordinate2D(latitude: -32.1410, longitude: 25.5096))
            
//            Marker("Ostrich", coordinate: CLLocationCoordinate2D(latitude: -32.1410, longitude: 25.5096))
            
//            Marker("Gorilla", coordinate: CLLocationCoordinate2D(latitude: -32.1410, longitude: 25.5096))
        }
    }
}

#Preview {
    MapView()
}
