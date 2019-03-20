//
//  main.swift
//  classes_and_objects
//
//  Created by Joel alexis on 3/2/19.
//  Copyright © 2019 Joel alexis. All rights reserved.
//

import Foundation
// Car object
let defaultCarObject = Car()

let specialCar = Car(specialColor: "Red")
let sDC = selfDrivingCar()


print(defaultCarObject.color)
print(specialCar.color)

//Use driving method by accessing it through defaultCarObject... -_-
defaultCarObject.drive()



// Acess custom drive() functionality through subclass
sDC.drive()

//Using enum
sDC.typeOfCar = .Sedan
print(sDC.typeOfCar)




