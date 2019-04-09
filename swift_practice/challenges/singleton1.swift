import UIKit
//Remember only one copy of singletons can be shared across classes and objects

/* Singleton is a design pattern where an object can be instantiated exactly only once within your application. There is only one copy of this object, and it is shared and used by any other object globally. */

class Car {
    var colour = "red"
    
    static let singletonCar = Car()
}

let myCar = Car.singletonCar


myCar.colour = "Blue"
let yerCar = Car.singletonCar
print(yerCar.colour) //Blue

class A {
    init() {
        Car.singletonCar.colour = "Brown"
    }
}

class B {
    init() {
        print("Class B", Car.singletonCar.colour) //brown
    }
}


let a = A()
let b = B()

print(Car.singletonCar.colour) //brown
