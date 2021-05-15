//
//  Map.swift
//  calmTheStorm
//
//  Created by Student Account on 5/14/21.
//

import Foundation
import UIKit
import SwiftUI
import MapKit
import CoreLocation


struct Map: UIViewRepresentable {
    typealias UIViewType = UIView
    
    
    var coordinate : CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        
        
        let map = MKMapView()
        
        map.setRegion(MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.8,
                                                                                    longitudeDelta: 0.8)),
            animated: true
        )
        view.addSubview(map)
        
        map.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            map.widthAnchor.constraint(equalTo: view.widthAnchor),
            map.heightAnchor.constraint(equalTo: view.heightAnchor),
            map.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            map.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        //Adding pin to the MAP
        let pin1 = MKPointAnnotation()
        pin1.coordinate = CLLocationCoordinate2D(latitude: 47.6848, longitude: -122.1883)
        pin1.title = "Shelter 1"
        pin1.subtitle = "You are safe here"
        map.addAnnotation(pin1)
        
        
        let pin2 = MKPointAnnotation()
        pin2.coordinate = CLLocationCoordinate2D(latitude: 47.48, longitude: -122.22)
        pin2.title = "Shelter 2"
        pin2.subtitle = "You are safe here"
        map.addAnnotation(pin2)
        
        
        let pin3 = MKPointAnnotation()
        pin3.coordinate = CLLocationCoordinate2D(latitude: 47.5301011, longitude: -122.03261910000003)
        pin3.title = "Shelter 3"
        pin3.subtitle = "You are safe here"
        map.addAnnotation(pin3)

        
        let pin4 = MKPointAnnotation()
        pin4.coordinate = CLLocationCoordinate2D(latitude: 47.34, longitude: -122.1)
        pin4.title = "Shelter 4"
        pin4.subtitle = "You are safe here"
        map.addAnnotation(pin4)
        
        
        let pin5 = MKPointAnnotation()
        pin5.coordinate = CLLocationCoordinate2D(latitude: 47.98, longitude: -122.2)
        pin5.title = "Shelter 5"
        pin5.subtitle = "You are safe here"
        map.addAnnotation(pin5)
        
        
        let pin6 = MKPointAnnotation()
        pin6.coordinate = CLLocationCoordinate2D(latitude: 47.7423, longitude: -121.9857)
        pin6.title = "Shelter 6"
        pin6.subtitle = "You are safe here"
        map.addAnnotation(pin6)

        
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        // do nothing
    }
}
