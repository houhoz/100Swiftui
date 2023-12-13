import UIKit

var greeting = "Hello, playground"


let playerName: String = "Roy"

var luckyNumber: Int = 13

let pi: Double = 3.141

var isAuthenticated: Bool = true


var albums: [String] = ["Red", "Fearless"]

var user: [String: String] = ["id": "@twostraws"]


var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])


var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]


var teams: [String] = [String]()


var cities: [String] = []


var clues = [String]()


enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light


let username: String
// lots of complex logic
username = "@twostraws"
// lots more complex logic
print(username)


let albums = ["Red", "Fearless", "1989", "Red", "Speak Now", "Fearless"]

// Print the number of items in the array
print("Number of items in the array: \(albums.count)")

// Convert the array to a set to get unique items
let uniqueAlbums = Set(albums)

// Print the number of unique items in the array
print("Number of unique items in the array: \(uniqueAlbums.count)")


