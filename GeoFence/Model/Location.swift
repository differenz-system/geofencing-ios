//
//  Location.swift
//  GeoFence
//
//  Created by Differenz System on 13/11/18.
//  Copyright © 2018 Differenz System. All rights reserved.
//

import UIKit

import CoreLocation

class Location: NSObject {

    var name: String?
    var coordinate: CLLocationCoordinate2D?
    var didEnter: Bool? = false
    var didExit: Bool? = true
    
    init(name: String, coordinate: CLLocationCoordinate2D) {
        self.name = name
        self.coordinate = coordinate
    }
    
    //  Function to mark that a location has entered the GeoFence
    func hasEntered() {
        self.didEnter = true
        self.didExit = false
    }
    
    //  Function to mark that a location has exited the GeoFence
    func hasExited() {
        self.didEnter = false
        self.didExit = true
    }
    
    //  Function to populate an array of Dummy/Static Location Points
    internal class func getStaticLocations() -> [Location] {
        
        let lSurat = Location(name: "Surat", coordinate: CLLocationCoordinate2D(latitude: 21.170240, longitude: 72.831062))
        let lAdajan = Location(name: "Adajan", coordinate: CLLocationCoordinate2D(latitude: 21.190769, longitude: 72.794006))
        let lAthwa = Location(name: "Athwa", coordinate: CLLocationCoordinate2D(latitude: 21.155250, longitude: 72.765570))
        let lPal = Location(name: "Pal", coordinate: CLLocationCoordinate2D(latitude: 21.199980, longitude: 72.766280))
        let lUdhna = Location(name: "Udhna", coordinate: CLLocationCoordinate2D(latitude: 21.172270, longitude: 72.850357))
        let lPiplod = Location(name: "Piplod", coordinate: CLLocationCoordinate2D(latitude: 21.173770, longitude: 72.792100))
        let lVesu = Location(name: "Vesu", coordinate: CLLocationCoordinate2D(latitude: 21.139534, longitude: 72.770691))
        
        let lAhmedabad = Location(name: "Ahmedabad", coordinate: CLLocationCoordinate2D(latitude: 23.033863, longitude: 72.585022))
        let lPaldi = Location(name: "Paldi", coordinate: CLLocationCoordinate2D(latitude: 23.013412, longitude: 72.562408))
        let lSarkhej = Location(name: "Sarkhej", coordinate: CLLocationCoordinate2D(latitude: 22.975889, longitude: 72.497627))
        let lVastrapur = Location(name: "Vastrapur", coordinate: CLLocationCoordinate2D(latitude: 23.035080, longitude: 72.527641))
        let lMemnagar = Location(name: "Memnagar", coordinate: CLLocationCoordinate2D(latitude: 23.048100, longitude: 72.541382))
        
        let lVadodara = Location(name: "Vadodara", coordinate: CLLocationCoordinate2D(latitude: 22.310696, longitude: 73.192635))
        let lAlkapuri = Location(name: "Alkapuri", coordinate: CLLocationCoordinate2D(latitude: 22.313295, longitude: 73.176590))
        let lManjalpur = Location(name: "Manjalpur", coordinate: CLLocationCoordinate2D(latitude: 22.273440, longitude: 73.196980))
        let lRaceCourse = Location(name: "Race Course", coordinate: CLLocationCoordinate2D(latitude: 22.310050, longitude: 73.158740))
        let lAkota = Location(name: "Akota", coordinate: CLLocationCoordinate2D(latitude: 22.293989, longitude: 73.176109))
        
        let lRajkot = Location(name: "Rajkot", coordinate: CLLocationCoordinate2D(latitude: 22.308155, longitude: 70.800705))
        let lBharuch = Location(name: "Bharuch", coordinate: CLLocationCoordinate2D(latitude: 21.705135, longitude: 72.995872))
        let lAnand = Location(name: "Anand", coordinate: CLLocationCoordinate2D(latitude: 22.564518, longitude: 72.928871))
        let lNadiad = Location(name: "Nadiad", coordinate: CLLocationCoordinate2D(latitude: 22.691586, longitude: 72.863365))
        let lBhavnagar = Location(name: "Bhavnagar", coordinate: CLLocationCoordinate2D(latitude: 21.764473, longitude: 72.151932))
        let lGandhinagar = Location(name: "Gandhinagar", coordinate: CLLocationCoordinate2D(latitude: 23.215635, longitude: 72.636940))
        let lVapi = Location(name: "Vapi", coordinate: CLLocationCoordinate2D(latitude: 20.389315, longitude: 20.389315))
        let lValsad = Location(name: "Valsad", coordinate: CLLocationCoordinate2D(latitude: 20.609961, longitude: 72.930656))
        let lBillimora = Location(name: "Billimora", coordinate: CLLocationCoordinate2D(latitude: 20.766500, longitude: 72.969704))
        let lNavsari = Location(name: "Navsari", coordinate: CLLocationCoordinate2D(latitude: 20.946701, longitude: 72.952034))
        let lSachin = Location(name: "Sachin", coordinate: CLLocationCoordinate2D(latitude: 21.080020, longitude: 72.883840))
        let lAnkleshwar = Location(name: "Ankleshwar", coordinate: CLLocationCoordinate2D(latitude: 21.624850, longitude: 73.003020))
        let lKim = Location(name: "Kim", coordinate: CLLocationCoordinate2D(latitude: 21.352770, longitude: 73.303370))
        let lKosamba = Location(name: "Kosamba", coordinate: CLLocationCoordinate2D(latitude: 21.463985, longitude: 72.955035))
        let lBardoli = Location(name: "Bardoli", coordinate: CLLocationCoordinate2D(latitude: 21.119966, longitude: 73.113799))
        let lVyara = Location(name: "Vyara", coordinate: CLLocationCoordinate2D(latitude: 21.112312, longitude: 73.395750))
        let lChikhli = Location(name: "Chikhli", coordinate: CLLocationCoordinate2D(latitude: 20.756796, longitude: 73.065214))

        return [lAdajan, lUdhna, lPal, lAthwa, lPiplod, lVesu, lSurat,
                lPaldi, lSarkhej, lMemnagar, lVastrapur, lAhmedabad,
                lAkota, lAlkapuri, lManjalpur, lRaceCourse, lVadodara,
                lRajkot, lBharuch, lAnand, lNadiad, lBhavnagar, lGandhinagar,
                lVapi, lValsad, lBillimora, lNavsari, lSachin,
                lAnkleshwar, lKim, lKosamba, lBardoli, lVyara, lChikhli]
        
    }
    
}
