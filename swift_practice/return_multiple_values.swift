//import UIKit

//Use a tuple to make compound values eg: Return multiple values from a func
//Access elements(in tuple) by name or by number

func calculateStats(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}

let stats = calculateStats(scores: [5, 3, 100, 3, 9])
print(stats.sum)
print(stats.2, "Stats.2")
