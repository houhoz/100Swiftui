import UIKit

var greeting = "Hello, playground"

protocol Vehicle {
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }

    func openSunroof() {
        print("It's a nice day!")
    }
}


func commute(distance: Int, using vehicle: Car) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)



extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}


var quote = "   The truth is rarely pure and never simple   "
let trimmed = quote.trimmed()


func trim(_ string: String) -> String {
    string.trimmingCharacters(in: .whitespacesAndNewlines)
}
let trimmed2 = trim(quote)


// Protocol describing a building
protocol BuildingProtocol {
    var numberOfRooms: Int { get }
    var cost: Int { get set }
    var estateAgent: String { get set }
    
    func printSalesSummary()
}

// Struct representing a house
struct House {
    var numberOfRooms: Int
    var cost: Int
    var estateAgent: String
}

// Struct representing an office
struct Office {
    var numberOfRooms: Int
    var cost: Int
    var estateAgent: String
}

// Extension for conformance to BuildingProtocol for House
extension House: BuildingProtocol {
    func printSalesSummary() {
        print("House with \(numberOfRooms) rooms, costing $\(cost). Sold by \(estateAgent).")
    }
}

// Extension for conformance to BuildingProtocol for Office
extension Office: BuildingProtocol {
    func printSalesSummary() {
        print("Office with \(numberOfRooms) rooms, costing $\(cost). Sold by \(estateAgent).")
    }
}

// Example usage
var myHouse = House(numberOfRooms: 3, cost: 300000, estateAgent: "ABC Realty")
myHouse.printSalesSummary()

var myOffice = Office(numberOfRooms: 10, cost: 1000000, estateAgent: "XYZ Properties")
myOffice.printSalesSummary()
