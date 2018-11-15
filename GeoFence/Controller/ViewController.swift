//
//  ViewController.swift
//  GeoFence
//
//  Created by Differenz System on 12/11/18.
//  Copyright © 2018 Differenz System. All rights reserved.
//

import UIKit

import CoreLocation

class ViewController: UIViewController {
    
    var currentLocation: CLLocationCoordinate2D?
    var currentRegion: CLRegion?
    
    let locationManager = CLLocationManager()
    
    //  MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get current location
        getCurrentLocation()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //  MARK: - Helper Methods
    private func getCurrentLocation() {
        
        //  Request Location Authorization
        self.locationManager.requestAlwaysAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.allowsBackgroundLocationUpdates = true
            locationManager.showsBackgroundLocationIndicator = true
            locationManager.startUpdatingLocation()
            locationManager.startMonitoringSignificantLocationChanges()
        }
        
    }
    
    func setupGeofence(radius: CGFloat, identifier: String) {
        
        //  Stop monitoring previous region, if any
        if currentRegion != nil {
            self.locationManager.stopMonitoring(for: currentRegion!)
        }
        
        //  Create new region from the current location, with provided radius and identifier
        let geofenceRegion = CLCircularRegion(center: currentLocation!, radius: CLLocationDistance(radius), identifier: identifier)
        
        //  Start monitoring the newly created region, hence ceating a GeoFence
        self.locationManager.startMonitoring(for: geofenceRegion)
        
        //   Assign this newly created region to a global variable
        currentRegion = geofenceRegion
        
        //  Fetch array of locations to check with the Geofence and
        //  check whether any of the locations fall under the newly created
        //  geofence region
        let arrLoctions = Location.getStaticLocations()
        
        for location in arrLoctions {

            if geofenceRegion.contains(location.coordinate!) && !location.didEnter! && location.didExit! {
                Utilities.showEntryNotification(location: location.name!)
                location.hasEntered()
            } else if location.didEnter! && !location.didExit! {
                Utilities.showExitNotification(location: location.name!)
                location.hasExited()
            }
            
        }
        
    }
    
}

//  MARK: - Location Delegate Methods
extension ViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        //  CHeck if location retrieved frim delegate is not NULL
        guard let location: CLLocationCoordinate2D = manager.location?.coordinate else { return }
        
        //  If the location retrieved is not NULL, assign it to global variable
        currentLocation = location
        
        //  Setup a GeoFence for the new location
        setupGeofence(radius: 500.0, identifier: "CurrentLocation")
    }
    
}
