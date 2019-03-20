//
//  selfDrivingCar.swift
//  classes_and_objects
//
//  Created by Joel alexis on 3/2/19.
//  Copyright © 2019 Joel alexis. All rights reserved.
//

import Foundation

// Adding Car to selfDrivingCar: Car means its inhereting from the Car class which makes selfDrivingClass a subclass of super class Car. selfdrivingCar now inherits all properties and methods from Car
class selfDrivingCar: Car {
    var destination: String? // "? Optional" means it might or might not have a value
    
    //Override func drive() from the super class Car. This says "Access drive() from class but i want it customized
    override func drive() {
        //super as in super class. This says perform all functionalities from the drive() function.
        super.drive()
        
        // a safer way of using optionals
        if let arrived = destination {
            print("Arrived at: " + arrived)
        }
    }
}
