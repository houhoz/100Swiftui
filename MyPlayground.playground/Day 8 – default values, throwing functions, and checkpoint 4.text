import UIKit

var greeting = "Hello, playground"


func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)


enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}


let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}



enum SquareRootError: Error {
    case outOfBounds
    case noRoot
}

func integerSquareRoot(_ number: Int) throws -> Int {
    if !(1...10_000).contains(number) {
        throw SquareRootError.outOfBounds
    }

    var guess = number / 2
    var lastGuess = 0

    while guess * guess != number {
        if guess == lastGuess {
            throw SquareRootError.noRoot
        }

        lastGuess = guess
        guess = (guess + number / guess) / 2
    }

    return guess
}

// Example usage:
do {
    let result = try integerSquareRoot(25)
    print("Square root: \(result)")
} catch SquareRootError.outOfBounds {
    print("Error: Out of bounds")
} catch SquareRootError.noRoot {
    print("Error: No root found")
} catch {
    print("An unexpected error occurred")
}

