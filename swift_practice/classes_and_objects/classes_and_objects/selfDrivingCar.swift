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
    var destination: String = "1 infinite loop"
    
    //Override func drive() from the super class Car. This says "Access drive() from class but i want it customized
    override func drive() {
        //super as in super class. This says perform all functionalities from the drive() function.
        super.drive()
        // Now do some extra stuff after drive() executes.
        print("Driving to: " + destination)
    }
    
}
