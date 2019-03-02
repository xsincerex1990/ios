//
//  Car.swift
//  classes_and_objects
//
//  Created by Joel alexis on 3/2/19.
//  Copyright © 2019 Joel alexis. All rights reserved.
//


import Foundation

enum CarType {
    case Sedan
    case Hatchback
    case Coupe
}

class Car {
    var color = "black"
    var seats = 5
    var typeOfCar: CarType = .Coupe
    
    // default init
    init() {
        
    }
    
    convenience init(specialColor: String) {
        self.init()
        color = specialColor
    }
    
    //Drive method
    func drive() {
        print("Car is moving")
    }
}
