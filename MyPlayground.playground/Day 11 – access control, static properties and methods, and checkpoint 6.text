import UIKit

var greeting = "Hello, playground"


struct BankAccount {
    private var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}


struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)


struct Car {
    let model: String
    let seatCount: Int
    private(set) var currentGear: Int // Making currentGear private(set) to allow internal modification

    init(model: String, seatCount: Int) {
        self.model = model
        self.seatCount = seatCount
        self.currentGear = 1 // Default to gear 1 when a car is initialized
    }

    mutating func changeGear(up: Bool) {
        if up {
            // Check if the current gear is less than the maximum gear (e.g., 10)
            if currentGear < 10 {
                currentGear += 1
            } else {
                print("Cannot shift to a higher gear. Already in the highest gear.")
            }
        } else {
            // Check if the current gear is greater than 1
            if currentGear > 1 {
                currentGear -= 1
            } else {
                print("Cannot shift to a lower gear. Already in the lowest gear.")
            }
        }
    }
}

// Example usage:
var myCar = Car(model: "Toyota", seatCount: 5)
print("Initial gear: \(myCar.currentGear)")

myCar.changeGear(up: true)
print("Current gear after shifting up: \(myCar.currentGear)")

myCar.changeGear(up: false)
print("Current gear after shifting down: \(myCar.currentGear)")
