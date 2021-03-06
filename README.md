Open-Beacon-Credentials
========================

A shared iBeacon identifier scheme for common use cases. Using this enables apps to work across different iBeacon vendors and provides a simplified setup process to link apps to iBeacons. This ID scheme is specifically made for casual use cases. If you are looking into large scale or commercial iBeacon deployments, this is **not** quite for you, but feel free to use it as an inspiration.

<img src="https://raw.githubusercontent.com/AwwApps/Open-Beacon-Credentials/master/Images/Logo_OpenBeaconCredentials.png" width="180" />

### Benefits

Apps that support **Open Beacon Credentials** allow easy linking of iBeacon using **auto-detection** and **auto-naming**.

### Supporting Apps

* [Launch Here](http://launchhere.awwapps.com) (upcoming)
* [Travel Radar](http://travelradar.awwapps.com) (upcoming)

### Usage

As recommended by Apple all iBeacons ranged by a specific app share a **UUID**. The Major/Minor ID helps to drill down to a specific iBeacon. The **Major ID** is used to define a rough localization by room. The **Major ID** drills down to a specifc spot or object where the iBeacon is placed or integrated. To leverage the benefits of Open Beacon Credentials in the supporting apps you need to update its UUID and pick one of the preset names to drive the choice for your Major/Minor ID. Check out our [wiki](https://github.com/AwwApps/Open-Beacon-Credentials/wiki/Configuration-Guides) if more information about how to change the ID of your iBeacon.

## UUID 

Required for auto-detection

**AA6062F0-98CA-4211-8EC4-193EB73CEBE6**

## Major ID ≈ Room 

Required for auto-naming

| 0 - 99 | Custom Range
| ------ |:-------------------- 
| 0 | Portable 
| 1 - 99 | Reserved for individual usage


| 100 - 199 | Home
| --------- |:---- 
| 101       | Entrance
| 102       | Hallway
| 103       | Living Room
| 104       | Kitchen
| 105       | Bedroom
| 106       | Bathroom
| 107       | Office
| 108       | Closet
| 109       | Balkony


| 200 - 299 | Work 
| --------- |:---- 
| 201       | Entrance 
| 202       | Kitchen 
| 203       | Bathroom 


## Minor ID ≈ Object

Required for auto-detection

| 0 - 99 | Custom Range 
| ------ |:-------------------- 
| 0 - 99 | Reserved for individual usage


| 100 - 199 | Furniture 
| --------- |:---------- 
| 101 | Sofa 
| 102 | Table 
| 103 | Wardrobe 
| 104 | Bed 
| 105 | Chair
| 106 | Desk 
| 107 | Cupboard


| 200 - 299 | Appliance 
| --------- |:---------- 
| 201 | Fridge
| 202 | Boiler
| 203 | Stove
| 204 | Oven
| 205 | Coffee
| 206 | Tea
| 207 | Wage
| 208 | Washing Machine


| 300 - 399 | Electronics
| --------- |:---------- 
| 301 | TV
| 302 | Projector 
| 303 | Gaming 
| 304 | Stereo
| 305 | Charger
| 306 | Computer


| 400 - 499 | Luggage 
| --------- |:----------
| 401 | Backpack
| 402 | Suitcase
| 403 | Bag 

 
| 500 - 599 | Mobility
| --------- |:---------- 
| 501 | Bike
| 502 | Car 


| 600 - 699 | Wearables
| --------- |:---------- 
| 601 | Watch |
| 602 | Band |
| 603 | Headphones |
| 604 | Apparel |
| 605 | Shoes |
| 606 | Purse |


>   Version 1.0

*Wow, crazy! You made it through this whole page. Find more information on our [blog](http://blog.awwapps.com/blog/categories/ibeacon/) and follow us on [Twitter](https://twitter.com/AwwApps) for the latest updates* ★
