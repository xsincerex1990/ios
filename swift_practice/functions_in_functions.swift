// Organize big functions by making nested functions

func rF() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
print(rF()) // 15

// returns funcs as values wooooooh
func mI() -> ((Int) -> Int) {
    func addO(number: Int) -> Int {
        return 1 + number
    }
    return addO
}
var increment = mI()
print(increment(7)) //8

//funcs taking functions as arguments

func hasAnyMatch(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [12, 11, 9, 11]
print(hasAnyMatch(list: numbers, condition: lessThanTen))

/* You can write a closure without a name by surrounding code with braces ({}). Use in to separate the arguments and return type from the body */
numbers.map({ (number: Int) -> Int in
    let r = 3 * number
    return r
})

//If the closures type is already known you can omit the type and return type
//Single statement closures implicitly return the value of their only statement

let mappedNums = numbers.map({number in 3 * number})
print(mappedNums)

//When a closure is the only argument to a function, you can omit the parentheses entirely.
let sortedNums = numbers.sorted { $0 > $1 }
print(sortedNums)