Open-iBeacon-Credentials
========================

A shared iBeacon identifier scheme for common use cases.

iBeacons with one of this UUID can be auto-detected in the supported apps. If you use one of the Major ID / Minor ID they will also show up with the defined title automatically. 

### Supporting Apps

* Launch Here (upcoming)
* Travel Radar (upcoming)

# Credentials

As recommended by Apple all iBeacons ranged for by an app share a UUID. The drill down to a specific iBeacons uses the Major ID for a rough localization by room or space and the Major ID for the specifc spot.

## UUID

**AWW1DA8D-65B5-48A3-973F-ACD36B6525EF**

## Major ID

| 1 - 99 | Custom range, no set |
| ------ | -------------------- |  
| - | - |


| 100 - 199 | Home |
| --------- | ---- |
| 101       | Entry|
| 102       | Bathroom|
| 103       | Kitchen|
| 104       | Office|
| 105       | Storage|
| 106       | Hallway|
| 107       | Bedroom|
| 108       | Work|
| 109       | Living Room|
| 110       | Kids Room|


| 200 - 299 | Work |
| --------- | ---- |
| 201       | Entry |
| 202       | Kitchen |
| 203       | Bathroom |
| 204       | Desk |


| 300 - 399 | Commercial |
| --------- | ---------- |
| 301 | Entry |
| 302 | Cashpoint |
| 303 | Check Out |
| 304 | Bathroom |

| 0 | Portable |
| ------ | -------------------- |  
|  |  |

## Minor ID

| 1 - 99 | Custom range, no set |
| ------ | -------------------- |  
| - | - |


| 100 - 199 | Furniture |
| --------- | ---------- |
| 101 | Sofa |
| 102 | Desk |
| 103 | Table |
| 104 | Wardrobe |
| 105 | Bed |

| 200 - 299 | Household Appliances |
| --------- | ---------- |
| 201 | Water | Boiler
| 202 | Coffee | Machine
| 203 | Sink |
| 204 | Heater |
| 205 | Fridge |
| 206 | Wardrobe |

| 300 - 399 | Entertainment Electronics |
| --------- | ---------- |
| 301 | Apple | TV
| 302 | TV |
| 303 | Projector |
| 304 | Gaming | System
| 305 | Turntables |
| 306 | Stereo |

| 400 - 499 | Emulators |
| --------- | ---------- |
| 401 | iOS |
| 402 | Macbook |
| 403 | iMac |
| 404 | Mac | Mini
| 405 | Computer |
| 406 | Raspberry | Pi

| 500 - 599 | Luggage |
| --------- | ---------- |
| 501 | Backpack |
| 502 | Suitcase |
 
| 600 - 699 | Transportation |
| --------- | ---------- |
| 601 | Bike |
| 602 | Car |
| 603 | Skateboard |
| 604 | Motorcycle |
