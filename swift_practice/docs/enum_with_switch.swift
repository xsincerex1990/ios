//enums define a common type for a group of values and enables you to work with those values in a type-safe way in your code


enum CompassPoint {
    //multiple cases can be defined in one line 
    //case circle, square, triangle
    case north
    case south 
    case east 
    }

//each enum defines a new type like other types in swift
//give enums singular names instead of plural and capitalize the first letter

//type of direction inferred with one of the values of CompassPoint
var direction = CompassPoint.east



//once declared as  a CompassPoint you can use shorter syntax like below
direction = .south

switch direction {
case .north:
    print("Going north")
case .south:
    print("Going South")
case .east:
    print("Going east...you get the point.")
    }

