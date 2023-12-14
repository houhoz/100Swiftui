import UIKit

// 变量
var name = "Ted"
name = "Rebecca"

// 常量
let user = "Daphne"

// 打印
print(user)


// 字符串
let actor = "Tom Cruise"

let actor1 = "Tom Cruise 🏃‍♂️"

// 字符串中引用双引号，在它们之前放一个反斜杠:
let quote = "He tapped a sign saying \"Believe\" and walked away."


// 多行文本
let movie = """
A day in

the life of an
Apple engineer
"""

//Swift为字符串提供了许多有用的属性和方法，包括。count以读取它有多少个字母：
print(actor.count)

// 区分大小写
print(quote.hasPrefix("He"))
print(quote.hasSuffix("Away."))

//Integers

// Int类型
let score = 10
let higherScore = score + 10
let halvedScore = score / 2

var counter = 10
counter += 5


let number = 120
print(number.isMultiple(of: 3))


let id = Int.random(in: 1...1000)


// Decimals

// Double类型
let score1 = 3.0


// Booleans

let goodDogs = true
let gameOver = false

var isSaved = false
isSaved.toggle()

// Joining strings（字符串模板）
let name1 = "Taylor"
let age1 = 26
let message = "I'm \(name1) and I'm \(age1) years old."
print(message)


// Arrays  数组

// 确保每个数组的 item 类型是相同的

var colors = ["Red", "Green", "Blue"]
let numbers = [4, 8, 15, 16]
var readings = [0.1, 0.5, 0.8]

print(colors[0])
print(readings[2])

// 添加
colors.append("Tartan")

// 删除指定索引的项目
colors.remove(at: 0)
print(colors.count)

// 包含指定项
print(colors.contains("Octarine"))

//Dictionaries
// 字典

let employee = [
    "name": "Taylor",
    "job": "Singer"
]

// 如果我们要求的密钥不存在，将使用默认值。
print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown"])

// Sets
// 集合与数组类似，不同之处在于您不能添加重复的项目，并且它们不按特定顺序存储项目。
var numbers1 = Set([1, 1, 3, 5, 7])
print(numbers1)

numbers1.insert(10)


// Enums

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .friday

// Type annotations

var score2: Double = 0

let player: String = "Roy"
var luckyNumber: Int = 13
let pi: Double = 3.141
var isEnabled: Bool = true
var albums: Array<String> = ["Red", "Fearless"]
var user1: Dictionary<String, String> = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation"])

// 字典和数组
var albums2: [String] = ["Red", "Fearless"]
var user2: [String: String] = ["id": "@twostraws"]

// 创建一个空数组
var teams: [String] = [String]()
var clues = [String]()

// 枚举的值与枚举本身具有相同的类型:

enum UIStyle {
    case light, dark, system
}

var style: UIStyle = .light


// Conditions

let age = 16

if age < 12 {
    print("You can't vote")
} else if age < 18 {
    print("You can vote soon.")
} else {
    print("You can vote now.")
}


let temp = 26

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

// Switch statements
//Switch 语句必须是详尽无遗的: 必须处理所有可能的值，这样您就不会意外地错过其中一个。

enum Weather {
    case sun, rain, wind
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("A nice day.")
case .rain:
    print("Pack an umbrella.")
default:
    print("Should be okay.")
}


// The ternary conditional operator
// 三目运算符

let age2 = 18
let canVote = age2 >= 18 ? "Yes" : "No"


// Loops

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works on \(os).")
}


for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

for i in 1..<13 {
    print("5 x \(i) is \(5 * i)")
}


var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

var count = 10

while count > 0 {
    print("\(count)…")
    count -= 1
}

print("Go!")


let files = ["me.jpg", "work.txt", "sophie.jpg"]

for file in files {
    if file.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(file)")
}


// Functions

func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

// return
func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

// 可以省略return关键字

func rollDice1() -> Int {
    Int.random(in: 1...6)
}


//返回多个值
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user3 = getUser()
print("Name: \(user3.firstName) \(user3.lastName)")


// 解构元组
let (firstName, _) = getUser()
print("Name: \(firstName)")


// 自定义参数标签

// 如果在调用函数时不想传递参数名，请在参数名前加下划线：
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string1 = "HELLO, WORLD"
let result1 = isUppercase(string1)


// 另一种方法是在第一个名字之前写一个第二个名字: 一个外部使用，一个内部使用:

func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)


// 为参数提供默认值
func greet(_ person: String, formal: Bool = false) {
    if formal {
        print("Welcome, \(person)!")
    } else {
        print("Hi, \(person)!")
    }
}

greet("Tim", formal: true)
greet("Taylor")


// 处理函数中的错误

//要处理函数中的错误，你需要告诉Swift哪些错误会发生，编写一个可以抛出错误的函数，然后调用它并处理任何问题。
// 首先，定义可能发生的错误：
enum PasswordError: Error {
    case short, obvious
}

// 接下来，编写一个可以抛出错误的函数。这是通过将 throw 放入函数的类型，然后使用 throw 触发特定的错误来完成的:

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 10 {
        return "OK"
    } else {
        return "Good"
    }
}

// 现在通过启动 do 块调用抛出函数，使用 try 调用函数，然后捕捉发生的错误:

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Rating: \(result)")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}


// Closures
// 您可以将功能直接分配给一个常量或变量，如下所示:
let sayHello = {
    print("Hi there!")
}

sayHello()


let sayHello1 = { (name: String) -> String in
    "Hi \(name)!"
}



let team = ["Gloria", "Suzanne", "Tiffany", "Tasha"]

let onlyT = team.filter({ (name: String) -> Bool in
    return name.hasPrefix("T")
})



// 在闭包内部，我们列出了filter()传递给我们的参数，该参数是来自数组的字符串。我们还说，我们的闭包返回一个布尔值，然后使用in标记闭包代码的开始 - 在此之后，其他所有内容都是正常的函数代码。


// Trailing closures and shorthand syntax

print(onlyT)

//
//let onlyT = team.filter({ (name: String) -> Bool in
//    name.hasPrefix("T")
//})


//let onlyT = team.filter({ name in
//    name.hasPrefix("T")
//})


//let onlyT = team.filter { name in
//    name.hasPrefix("T")
//}


//let onlyT = team.filter {
//    $0.hasPrefix("T")
//}


// Structs
