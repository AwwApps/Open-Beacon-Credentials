Open-iBeacon-Credentials
========================

A shared iBeacon identifier scheme for common use cases.

iBeacons using the UUID **AA6062F0-98CA-4211-8EC4-193EB73CEBE6** can be auto-detected in all supported cross-iBeacon vendor apps. Optionally use one of the predefined Major and Minor IDs to link a specific title to your iBeacon. This makes linking an iBeacon a one tap procedure instead of manually entering IDs and display names. Welcome to the future.

### Supporting Apps

* [Launch Here](http://launchhere.awwapps.com) (upcoming)
* [Travel Radar](http://travelradar.awwapps.com) (upcoming)

# Credentials

As recommended by Apple all iBeacons ranged for by an app share a UUID. The drill down to a specific iBeacons uses the Major ID for a rough localization by room or space and the Major ID for the specifc spot.

![Scheme](https://raw.githubusercontent.com/AwwApps/Open-iBeacon-Credentials/master/assets/Scheme_Teaser.svg)

## UUID

**AA6062F0-98CA-4211-8EC4-193EB73CEBE6**

## Major ID

| 0 - 99 | Custom range |
| ------ | -------------------- |  
| 0 | Portable 
| 1 - 99 | Undefined/Custom


| 100 - 199 | Home |
| --------- | ---- |
| 101       | Entry
| 102       | Hallway
| 103       | Living Room
| 104       | Kitchen
| 105       | Bedroom
| 107       | Bathroom
| 108       | Office


| 200 - 299 | Work 
| --------- | ---- 
| 201       | Entry 
| 202       | Kitchen 
| 203       | Bathroom 


| 300 - 399 | Commercial 
| --------- | ---------- 
| 301 | Entry 
| 302 | Cashpoint 
| 303 | Bathroom 


## Minor ID

| 0 - 99 | Custom range 
| ------ | -------------------- 
| 1 - 99 | Undefined/Custom


| 100 - 199 | Furniture 
| --------- | ---------- 
| 101 | Sofa 
| 102 | Desk 
| 103 | Table 
| 104 | Wardrobe 
| 105 | Bed 


| 200 - 299 | Appliance 
| --------- | ---------- 
| 201 | Boiler
| 202 | Coffee
| 203 | Stove
| 204 | Oven
| 205 | Fridge


| 300 - 399 | Electronics
| --------- | ---------- 
| 301 | TV
| 302 | Projector 
| 303 | Gaming 
| 304 | Stereo 


| 500 - 599 | Luggage 
| --------- | ----------
| 501 | Backpack
| 502 | Suitcase
| 503 | Bag 

 
| 600 - 699 | Transportation |
| --------- | ---------- |
| 601 | Bike
| 602 | Car 
| 603 | Skateboard 


| 700 - 799 | Wearables |
| --------- | ---------- |
| 701 | Watch |
| 702 | Band |

>    Version 1.0
