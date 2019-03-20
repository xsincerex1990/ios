ass NamedShape {
    var numOfSides: Int = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numOfSides) sides."
    }
}
//sub class
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength // Set value of property
        super.init(name: name) // call superclass initializer
        numOfSides = 3 // change the value of property in defined in superclass
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An Equilateral triangle with sides of length \(sideLength)."
    }
}

var tri = EquilateralTriangle(sideLength: 3.1, name: "My Triangle")

print(tri.simpleDescription())
print(tri.perimeter)
tri.perimeter = 12.9
print(tri.sideLength)



struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

var sqr = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
let isc = sqr.center
sqr.center = Point(x: 15.0, y: 15.0)
print("sqr.origin is now at (\(sqr.origin.x), \(sqr.origin.y))")
