let arr = ["Red", "Blue", "Green", "Purple"]

//You dont have to declare type because its a argument for sorted 
var sortedData = arr.sorted(by: {(s1, s2) in return s1 < s2})

print(sortedData)

//or better yet you can do a implicit return since its a single expression closure

sortedData = arr.sorted(by: {s1, s2 in s1 > s2})
print(sortedData)
