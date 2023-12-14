import UIKit

var greeting = "Hello, playground"


func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

showWelcome()


func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)



func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)


func areLettersIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}


areLettersIdentical(string1: "1", string2: "2")


func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let c = pythagoras(a: 3, b: 4)
print(c)


//func getUser() -> [String] {
//    ["Taylor", "Swift"]
//}
//
//let user = getUser()
//print("Name: \(user[0]) \(user[1])")


func getUser() -> [String: String] {
    [
        "firstName": "Taylor",
        "lastName": "Swift"
    ]
}

let user = getUser()
print("Name: \(user["firstName", default: "Anonymous"]) \(user["lastName", default: "Anonymous"])")
