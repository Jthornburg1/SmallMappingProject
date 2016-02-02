//
//  LocationWrapper.swift
//  SmallMappingProject
//
//  Created by Jon Thornburg on 2/1/16.
//  Copyright © 2016 Jon Thornburg. All rights reserved.
//

import UIKit
import MapKit

class LocationWrapper: NSObject, CLLocationManagerDelegate {
    
    var locationManager: CLLocationManager = CLLocationManager()
    var currentUserLocation: CLLocation?
    
    override init() {
        super.init()
        setupLocationHandler()
    }
    
    private func setupLocationHandler(){
        print("locationManager setupLocationHandler")
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.distanceFilter = 100
    }
    
    func startLocationTracking(){
        print("locationManager startLocationTracking")
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func stopLocationTracking(){
        locationManager.stopUpdatingLocation()
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("locationManager ")
        if let firstLocation = locations.first {
            print("locationManager first")
        }
        currentUserLocation = locations.first
    }
}
