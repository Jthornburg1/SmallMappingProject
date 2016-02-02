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

}
