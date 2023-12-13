import UIKit

var greeting = "Hello, playground"
class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10


class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}


class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()


let novall = Developer(hours: 8)
novall.printSummary()


class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)



//class User {
//    var username = "Anonymous"
//
//    func copy() -> User {
//        let user = User()
//        user.username = username
//        return user
//    }
//}
//
//var user1 = User()
//
//
//var user2 = user1.copy()
//user2.username = "Taylor"
//
//
//print(user1.username)
//print(user2.username)


//class User {
//    let id: Int
//
//    init(id: Int) {
//        self.id = id
//        print("User \(id): I'm alive!")
//    }
//
//    deinit {
//        print("User \(id): I'm dead!")
//    }
//}
//
//for i in 1...3 {
//    let user = User(id: i)
//    print("User \(user.id): I'm in control!")
//}



class User {
    var name = "Paul"
}

var user = User()
user.name = "Taylor"
user = User()
print(user.name)


class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Generic dog barking")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        print("Generic cat meowing")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Corgi says woof")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Poodle says arf")
    }
}

class Persian: Cat {
    override func speak() {
        print("Persian cat purrs")
    }
}

class Lion: Cat {
    override func speak() {
        print("Lion roars")
    }
}

// Example usage:
let corgi = Corgi(legs: 4)
let poodle = Poodle(legs: 4)
let persian = Persian(legs: 4, isTame: true)
let lion = Lion(legs: 4, isTame: false)

print("Corgi has \(corgi.legs) legs.")
corgi.speak()

print("Poodle has \(poodle.legs) legs.")
poodle.speak()

print("Persian cat has \(persian.legs) legs and is tame: \(persian.isTame).")
persian.speak()

print("Lion has \(lion.legs) legs and is tame: \(lion.isTame).")
lion.speak()
