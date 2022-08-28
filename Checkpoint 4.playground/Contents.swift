import Cocoa

let numberToTry = 9

enum rootError : Error {
    case outOfBounds, noRoot
}

func squareRoot(_ number: Int) throws -> String {
    if number < 1 || number > 100 {
    throw rootError.outOfBounds
    }
    
    for i in 1...100 {
        if (i * i) == number {
            return "This has square root of \(i)"
        }
    }
    throw rootError.noRoot
}

do {
    print(try squareRoot(numberToTry))
} catch rootError.noRoot {
    print("This number doesnt have a square root")
} catch rootError.outOfBounds {
    print("This number is either too low or too high")
} catch {
    print("There was an error: \(error.localizedDescription)")
}

