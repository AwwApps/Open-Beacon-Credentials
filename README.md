Open-Beacon-Credentials
========================

A shared iBeacon identifier scheme for common use cases.

The goal is to allow apps for personal use to work across different iBeacon vendors.

Apps that follow the **Open Beacon Credentials** standard allow easy linking of iBeacon using **auto-detecting** and **auto-naming**.

### Supporting Apps

* [Launch Here](http://launchhere.awwapps.com) (upcoming)
* [Travel Radar](http://travelradar.awwapps.com) (upcoming)

# Credentials

As recommended by Apple all iBeacons ranged by a specific app share a **UUID**. The Major/Minor ID helps to drill down to a specific iBeacon. The **Major ID** is used for rough localization by room or space and the **Major ID** drills down to a specifc spot or object where the iBeacon is located or integrated.

## UUID _required_

**AA6062F0-98CA-4211-8EC4-193EB73CEBE6**

## Major ID _optional_ • Rooms, Spaces

| 0 - 99 | Custom
| ------ |:-------------------- 
| 0 | Portable 
| 1 - 99 | Reserved for your individual usage


| 100 - 199 | Home
| --------- |:---- 
| 101       | Entry
| 102       | Hallway
| 103       | Living Room
| 104       | Kitchen
| 105       | Bedroom
| 107       | Bathroom
| 108       | Office
| 109       | Closet
| 110       | Balkony


| 200 - 299 | Work 
| --------- |:---- 
| 201       | Entry 
| 202       | Kitchen 
| 203       | Bathroom 


| 300 - 399 | Commercial 
| --------- |:---------- 
| 301 | Entry 
| 302 | Cashpoint 
| 303 | Bathroom 


## Minor ID _optional_ • Specific Spots, Objects

| 0 - 99 | Custom range 
| ------ |:-------------------- 
| 1 - 99 | Reserved for your individual usage


| 100 - 199 | Furniture 
| --------- |:---------- 
| 101 | Sofa 
| 102 | Table 
| 103 | Wardrobe 
| 104 | Bed 
| 105 | Chair
| 106 | Desk 


| 200 - 299 | Appliance 
| --------- |:---------- 
| 201 | Fridge
| 202 | Boiler
| 203 | Stove
| 204 | Oven
| 205 | Coffee
| 206 | Tea


| 300 - 399 | Electronics
| --------- |:---------- 
| 301 | TV
| 302 | Projector 
| 303 | Gaming 
| 304 | Stereo 


| 500 - 599 | Luggage 
| --------- |:----------
| 501 | Backpack
| 502 | Suitcase
| 503 | Bag 

 
| 600 - 699 | Transportation
| --------- |:---------- 
| 601 | Bike
| 602 | Car 


| 700 - 799 | Wearables
| --------- |:---------- 
| 701 | Watch |
| 702 | Band |

>   Version 1.0
