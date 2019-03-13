let names = ["Venus", "Mars", "Jupiter", "Uranus", "Saturn"]

func planets_in_order(s1: String, s2: String) -> Bool{
    return s1 < s2
}

var sortedData = names.sorted(by: planets_in_order)

print(sortedData)

sortedData = names.sorted(by: {(s1: String, s2: String) -> Bool in return s1 > s2})

print(sortedData)

//inferring from context

sortedData = names.sorted(by: { s1, s2 in return s1 > s2 } )

print(sortedData)
