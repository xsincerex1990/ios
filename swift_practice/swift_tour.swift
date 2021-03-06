import UIKit

/* Data types: bool, int (Uint & int8), string, float, double, character */



var str = "Hello, playground"
print(str, "fuck")

/* Specify the type by writing it after the variable name seperated by a colon */

var highScore:Int = 59
var playerName:String = "Jack"

let l = "str"
let w = 94
let wl = l + String(w) // 'w' is an instance of string. Obviously 'w' gets converted to string
let  values_in_string = "Here's a random string with a math operation in it \(7 + 100 % 3)"
print(values_in_string, "COOL!!\n")


/* multi-line strings */
let longStr =
"""
long
random
string
"""

print(longStr)

var shoppingList = ["Oranges", "DragonFruit", "SeaMoss"]
shoppingList.append("Greens")
print(shoppingList.count) /* 4 */

/* Create empty arrays and dicts by initializing them. They must have a type. */
let emptyArr = [String]()
let emptyDict = [String: Float]()


/* Control Flow. Use "if" & "switch" to make conditionals. Use "for-in" "while" and "repeat-while" make loops */

let scores = [10, 20, 17, 56, 12]
var teamScore = 0

for s in scores {
    if s > 15 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

/*                                 Optionals
 Use the '?' mark after the type explicit declaration to mark the value as optional
 */


var optionalStr: String? = "OptStr"
print(optionalStr == "OptStr") // True

var optionalName: String? = "Appleseeds"
var greeting = "Hello!"

// Use "if let" together to work with values that might be missing
/* if condition is true optionalName gets assigned to the constant "name" variable and makes it available inside the block of code */
if let name = optionalName {
    greeting = "Hello, \(name)"
    print(greeting)
} else {
    print("Hello, whats your name?")
}



/* Another way to handle optional values is to provide a default value using '??' operator*/

let missingStr: String? = nil
let completedStr: String = "Yankee"
let informalGreeting = "Hi \(missingStr ?? completedStr)"
print(informalGreeting) // Hi yankee

/* Switches support any kind of data and many operations */

let veggy = "red pepper"
switch veggy {
case "celery":
    print("Add some raisins")
case "cucumber", "watercress":
    print("That would make a great tea")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
// OUTPUT: "Is it a spicy red pepper?"


let intersetingNumber = [
    "prime": [2, 3, 5, 7, 11],
    "fibs": [1, 1, 2, 3, 5, 8],
    "square": [1, 4, 9, 16, 25]
]

var largest = 0
var s: String? = nil


for (kind, nums) in intersetingNumber {
    for num in nums {
        if num > largest {
            largest = num
            s = kind
        }
    }
}
print(largest, s!) // 25 square

var n = 2
while n < 100 {
    n*=2
}
print(n) //128

//The block of code can be placed at the end ensuring that the code is ran atleast pmce
var m = 2
repeat {
    m*=2
} while m < 100
print(m)

// keep an index using ..< or ....
//Use ..< to make a range that omits its upper value and ... a range that includes both values

var total = 0
for _ in 0...4 {
    total += 1
}
print(total) //5
