//
//  BeaconLookup.swift
//
//
//  Created by Bernd Plontsch on 29/08/14.
//  Copyright (c) 2014 Bernd Plontsch. All rights reserved.
//

import UIKit
import CoreLocation

class BeaconLookup: NSObject {

    class func lookUpForCredentials(beaconUUID:NSString,beaconMajorID:Int,beaconMinorID:Int)->NSString {
        var region:CLBeaconRegion
        let uuid:NSUUID  = NSUUID(UUIDString: beaconUUID)!
        region = CLBeaconRegion(proximityUUID: uuid, major: CLBeaconMajorValue(beaconMajorID), minor: CLBeaconMinorValue(beaconMinorID), identifier: beaconUUID)
        let lookedUpString:NSString = lookUpForCLBeacon(region).string as NSString!
        return lookedUpString
    }
        
    class func lookUpForCLBeacon(beacon:CLBeaconRegion)->(room:NSString?, spot:NSString?, string:NSString) {

        let lookUpMajor:NSString = beacon.major.stringValue;
        let lookUpMinor:NSString = beacon.minor.stringValue;
        let lookUpUUID:NSString = beacon.proximityUUID.UUIDString;
        
        let beaconDictionary:NSDictionary = openBeaconCredentialsDictionary()
        
        let UUIDDictionary:NSDictionary = beaconDictionary.objectForKey("UUID") as NSDictionary
        let majorIDDictionary:NSDictionary = (beaconDictionary.objectForKey("Major") as NSDictionary).objectForKey("ID") as NSDictionary
        let minorIDDictionary:NSDictionary = (beaconDictionary.objectForKey("Minor") as NSDictionary).objectForKey("ID") as NSDictionary
        
        //BEACON NAME
        var beaconName:NSString?
        if UUIDDictionary.valueForKey(lookUpUUID) != nil {
            beaconName = UUIDDictionary.valueForKey(lookUpUUID) as? NSString
        } else {
            beaconName = "Beacon"
        }
        
        //ROOM
        var beaconRoom:NSString? = majorIDDictionary.valueForKey(lookUpMajor) as? NSString
        if beaconRoom == nil {
            var beaconRoomRange:NSString? = lookUpRange(lookUpMajor.integerValue, rangeDictionary: (beaconDictionary.objectForKey("Major") as NSDictionary).objectForKey("Range") as NSDictionary)
            if beaconRoomRange != nil {
                beaconRoom = beaconRoomRange
            }
        }
        
        //SPOT
        var beaconSpot:NSString? = minorIDDictionary.valueForKey(lookUpMinor) as? NSString
        if beaconSpot == nil {
            var beaconSpotRange:NSString? = lookUpRange(lookUpMinor.integerValue, rangeDictionary: (beaconDictionary.objectForKey("Minor") as NSDictionary).objectForKey("Range") as NSDictionary)
            if beaconSpotRange != nil {
                beaconSpot = beaconSpotRange
            }
        }
        
        //LABEL
        var label:NSString = "Beacon"
        if (beaconSpot != nil && beaconRoom != nil) {
            label = NSString(format: "%@ %@", beaconSpot!,beaconRoom!)
        } else {
            if (beaconSpot == nil && beaconRoom != nil) {
                label = beaconRoom!
            }
            if (beaconSpot != nil && beaconRoom == nil) {
                label = beaconSpot!
            }
            
            if beaconSpot == nil && beaconRoom == nil && beaconName != nil {
                label = beaconName!
            }
        }
        
        return (beaconRoom,beaconSpot,label)
    }
    
    class func lookUpRange(identifier:Int, rangeDictionary:NSDictionary)->NSString? {
        var lookedUpString:NSString?
        rangeDictionary.enumerateKeysAndObjectsUsingBlock { (key, object, stop) -> Void in
            let from:Int? = Int(object.valueForKey("from") as NSNumber)
            let to:Int? = Int(object.valueForKey("to") as NSNumber)
            if from != nil && to != nil {
                if identifier > from && identifier < to {
                    lookedUpString = key as? NSString
                    stop.memory = true
                }
            }
        }
        return lookedUpString
    }

    class func openBeaconCredentialsDictionary()->NSDictionary {
        let path:NSString = NSBundle.mainBundle().pathForResource("OpenBeaconCredentials_01", ofType: "plist")!
        let openBeaconCredentialsDictionary:NSDictionary = NSDictionary(contentsOfFile: path)!
        return openBeaconCredentialsDictionary
    }
    
    class func lookUpNameForUUID(uuidString:NSString)->NSString {
        let beacons:NSDictionary = openBeaconCredentialsDictionary().objectForKey("UUID") as NSDictionary
        let name:NSString? = beacons.objectForKey(uuidString) as? NSString
        if name != nil {
            return name!
        }
        return "Beacon"
    }
    
    class func allBeacons()->NSArray {
        let beacons:NSDictionary = openBeaconCredentialsDictionary().objectForKey("UUID") as NSDictionary
        var allBeacons:NSMutableArray = NSMutableArray()
        beacons.enumerateKeysAndObjectsUsingBlock { (item, count, stop) -> Void in
            if item != nil {
                allBeacons.addObject(item as NSString)
            }
        }
        return allBeacons
    }

}
