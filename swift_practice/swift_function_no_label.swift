import UIKit


// By default functions use their parameter names as labels for their arguments
// Use _ to use no argument label or write a name before the parameter name to use a custom one
func greet(_ person: String, on day: String) -> String {
    return "Hello \(person) today is \(day)."
}
print(greet("Manzur", on: "Tuesday"))



