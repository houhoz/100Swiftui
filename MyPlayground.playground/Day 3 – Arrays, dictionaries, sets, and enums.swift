import UIKit

var greeting = "Hello, playground"


var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]


print(beatles[0])
print(numbers[1])
print(temperatures[2])

beatles.append("Adrian")



var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])


var albums = Array<String>()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")


//var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

print(albums)

print(albums.count)


var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)


let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))


let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())


let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)


// 字典
let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])


var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206



// 集合
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people)


var people1 = Set<String>()
people1.insert("Denzel Washington")
people1.insert("Tom Cruise")
people1.insert("Nicolas Cage")
people1.insert("Samuel L Jackson")


enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

//enum Weekday {
//    case monday, tuesday, wednesday, thursday, friday
//}


var day = Weekday.friday

print(day)
