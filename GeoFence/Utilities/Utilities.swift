//
//  Utilities.swift
//  GeoFence
//
//  Created by Differenz System on 13/11/18.
//  Copyright © 2018 Differenz System. All rights reserved.
//

import UIKit

import UserNotifications

class Utilities: NSObject {

    //  Function that helps to display Location Entry Local Notification
    class func showEntryNotification(location: String) {
        
        let content = UNMutableNotificationContent()
        
        content.title = "Geofence Demo"
        content.body = "\(location) has entered our range"
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
        let request = UNNotificationRequest(identifier: location, content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    
    //  Function that helps to display Location Exit Local Notification
    class func showExitNotification(location: String) {
        
        let content = UNMutableNotificationContent()
        
        content.title = "Geofence Demo"
        content.body = "\(location) has exited our range"
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
        let request = UNNotificationRequest(identifier: location, content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    
}
