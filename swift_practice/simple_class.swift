class Shape {
    let x = 10
    var numberOfSides = 0
    
    func SimpleDescripton() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    func m(val: Int) {
        print(x * val)
    }
    
}

var shape = Shape() //Create instance
shape.m(val: 33)


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

