//
//  ViewController.swift
//  true-mosaics-map
//
//  Created by Math LLC on 6/20/16.
//  Copyright © 2016 Math LLC. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set initial location in Honolulu
        let initialLocation = CLLocation(latitude: 29.9511, longitude: -90.0715)
        
        let regionRadius: CLLocationDistance = 5000
        func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                regionRadius * 2.0, regionRadius * 2.0)
            mapView.setRegion(coordinateRegion, animated: true)
        }
        centerMapOnLocation(initialLocation)
        
        // show artwork on map
        let artwork = Artwork(title: "True Mosaic Studio Facade",
            locationName: "2801 Chartres Street, New Orleans, LA ",
            discipline: "Mosaic Mural",
            coordinate: CLLocationCoordinate2D(latitude:29.963579, longitude: -90.0517067))
  
        
        mapView.addAnnotation(artwork)
        
        mapView.delegate = self

    }


}

