//Only one copy of a singleton can be shared across classes and objects 
// this is an example of a singleton let defaults = UserDefaults.standard
// This is also an example let Sess = URLSession.shared

class Car {
    var color = "Red"
}

let YourCar = Car()
YourCar.color = "Blue"

let myCar = Car() 

print(YourCar.color)
print(myCar.color)
