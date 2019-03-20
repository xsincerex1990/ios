//Super class

class NamedShape {
    var numOfSides: Int = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numOfSides) sides."
    }
}


//Sub classes include their superclass name after their class name separated by a semicolon

  class Square: NamedShape { // Subclass
    var sideLength: Double
    // init to set up the class  when instance is created
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A shape with \(numOfSides) sides."
    }
}

class Circle: NamedShape {
    var radius: Double

    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
    
     func area() -> Double {
        return radius * radius * 3.14
    }

    override func simpleDescription() -> String {
        return "A shape with \(numOfSides) sides."
    }
}

let test = Square(sideLength: 5.2, name: "My square")
let test1 = Circle(radius: 80, name: "My Circle")

print(test.area())
print(test.simpleDescription())
print(test1.simpleDescription())
