import UIKit

var greeting = "Hello, playground"


let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

//let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
//    if name1 == "Suzanne" {
//        return true
//    } else if name2 == "Suzanne" {
//        return false
//    }
//
//    return name1 < name2
//})
//
//print(captainFirstTeam)


let captainFirstTeam = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }

    return $0 < $1
}

print(captainFirstTeam)


let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)


let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)



func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)


let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

// Chain filter, sorted, and map together
let formattedStrings = luckyNumbers
    .filter { $0 % 2 != 0 }
    .sorted()
    .map { "\($0) is a lucky number" }

// Print the resulting array, one item per line
formattedStrings.forEach { print($0) }
