//Only one copy of a singleton can be shared across classes and objects 
// this is an example of a singleton let defaults = UserDefaults.standard
// This is also an example let Sess = URLSession.shared

class Car {
    var color = "Red"
}

let YourCar = Car()
YourCar.color = "Blue"

let myCar = Car() 

//different colors for different objects.....Go see singleton1.swift
print(YourCar.color) // Blue 
print(myCar.color) // Red
