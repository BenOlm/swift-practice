import Cocoa
import Darwin
import os
import Foundation


// ~~~~~~~~~~~~~~~~~~~ CREATING VARIABLES AND CONSTANTS ~~~~~~~~~~~~~~~~~~~

// To create a variable use "var"
var name = "Ted"
name = "Rebecca"

// To create a constant use "let"
let user = "Daphne"

// The print function is helpful to output a variable/constant
print(user)

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ STRINGS ~~~~~~~~~~~~~~~~~~~

// Swifts strings start and end with double qutoes
let actor = "Tom Cruise"

// They also work great with emoji
let actorEmoji = "Tom Cruise 🏃‍♂️"

// If you want double quotes inside your string, place a backslash before them
let quote = "He tapped a sign saying \"Beleive\" and walked away"

// If you want a string that spans multiple lines, start and end with three double quotes
let movie = """
A day in
the life of an
Apple engineer
"""

// There are many useful properties for strings, including .count to read how many letters it has
print(actor.count)

// There are also hasPrefix() and hasSuffix(), which let us know whether a string starts of ends with specific letters
// Strings are case sensitive, so the second check will return false
print(quote.hasPrefix("He"))
print(quote.hasSuffix("Away."))

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ INTEGERS ~~~~~~~~~~~~~~~~~~~

// Swift stores whole numbers using the type Int, which supports standard mathematical operators
let score = 10
let higherScore = score + 10
let halvedScore = score / 2

// It also supports compount operators that modify variables in place
var counter = 10
counter += 5
print(counter)

// Integers also come with their own useful functionality, such as the isMultiple(of: ) method
let number = 120
print(number.isMultiple(of: 3))

// You can also make random untegers in a specific range like
let id = Int.random(in: 1...100)
print(id)

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ DECIMALS ~~~~~~~~~~~~~~~~~~~

// If you create a number with a decimal point, Swift will consider it a Double
// Swift considers Doubles to be different to Integers and wont let you mix them together
let scoreDouble = 3.0

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ BOOLEANS ~~~~~~~~~~~~~~~~~~~

//Swift uses the type Bool to store true or false
let goodDogs = true
let gameOver = false

// You can flip a Boolean from true to false be calling its toggle() method
var isSaved = false
isSaved.toggle()
print(isSaved)

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ JOINING STRINGS ~~~~~~~~~~~~~~~~~~~

// You can create strings out of other data using string interpolation. Write a backslash insode your string, then place the name of a variable or constant inside paraenthese
let name2 = "Taylor"
let age = 26
let message = "I'm \(name2) and I'm \(age) years old."
print(message)

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ ARRAYS ~~~~~~~~~~~~~~~~~~~

// You can group items into an array like this
// Each of those hold different kinds of data: one strings, one integers, and one decimals. When we read data from arrays we will get the appropriate type back - a String, an Int, or a Double:
var colors = ["red", "green", "blue"]
let numbers = [4, 8, 15, 16]
var readings = [0.1, 0.5, 0.8]

// You can read items in an array by calling the appropriate index
// Arrays start at '0' not '1'
print(colors[0])
print(readings[2])

// If your array is variable you can use append() to add new items, the new data must match what is already in the array
colors.append("tartan")
print(colors)

// Arrays have useful functionality such as .count to read how many items are in an array, or remove(at: ) to remove one item at a specific index
colors.remove(at: 0)
print(colors.count)

// You can check whether an array contains a particular item by using contains()
print(colors.contains("Octarine"))

// You can remove all items from an array with the removeAll() method
colors.removeAll()
print(colors)

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ DICTIONARIES ~~~~~~~~~~~~~~~~~~~

// Dictionaries store mulitple values according to a key we specify. For example we could create a dictionary to store information about a person
let employee = ["name": "Taylor", "job": "Singer"]

// To read data from the dictionary, use the same keys used when creating
// The default value will be used if the key we asked for doesnt exist
print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown"])

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ SETS ~~~~~~~~~~~~~~~~~~~

// Sets are similar to arrays, except you cannot add duplicate items. They do not store items in any particular order
var numbersSet = Set([1, 1, 3, 5, 7])
print(numbersSet)

// Adding items to a set is done by calling insert()
numbersSet.insert(10)
print(numbersSet)

// Sets have one big advantage over arrays. Calling contains() on a set is effectively instant no matter how many items the set contains
print(numbersSet.contains(10))

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ ENUMS ~~~~~~~~~~~~~~~~~~~

// An enum is a set of named values we can create and use to make our code more efficient and safer.
// That calls the new enum Weekday, and provides five cases to handle the five weekdays.
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .friday
print(day)

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ TYPE ANNOTATIONS ~~~~~~~~~~~~~~~~~~~

// You can try to force a specific type for a new variable or constant by using type annotation
var scoreForcedAsDouble: Double = 0
let player: String = "Roy"
var luckyNumber: Int = 13
let pi: Double = 3.141
var isEnabled: Bool = true
var albums: Array<String> = ["Red", "Fearless"]
var userTwitter: Dictionary<String, String> = ["id": "@twostraws", "platform": "Twitter"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation"])

// Arrays and Dictionaries are so common that they have special syntax that is easier to write
var albumsEasy: [String] = ["Red", "Fearless"]
var userTwitterEasy: [String:String] = ["id": "@twostraws", "platform": "Twitter"]

// Knowing the exact types of things is important for creating empty ccollentions. Both the below will create empty string arrays
var teams: [String] = [String]()
var clues = [String]()

// Values of an enum have the same type as the enum itself
enum UIStyle {
    case light, dark, system
}

var style: UIStyle = .light

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ CONDITIONS ~~~~~~~~~~~~~~~~~~~

// Use if, else and else if statements to check a condition and run some code
let ageToVote = 16

if ageToVote < 12 {
    print("You cant vote")
} else if ageToVote < 18 {
    print("You can vote soon")
} else {
    print("You can vote now")
}

// You can use && to combine two conditions, and the whole condition will only be true if the two parts insode are true
// Alteratively, || will make a condition be true if either subcondition is true
let temp = 26

if temp > 20 && temp < 30 {
    print("Its a nice day")
}

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ SWITCH STATEMENTS ~~~~~~~~~~~~~~~~~~~

// Swift lets us check a value against multiple conditions using switch/case syntax
// Switch statements must be exhaustive, meaning you need to use all possible values
enum Weather {
    case sun, rain, wind
}

let forcast = Weather.sun

switch forcast {
case .sun:
    print("A nice day.")
case .rain:
    print("Pack an umbrella.")
default:
    print("Should be okay.")
}

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ THE TERNARY CONDITIONAL OPERATOR ~~~~~~~~~~~~~~~~~~~

// The ternary operator lets is check a condition and return one of two values: something if the condition is true and something if its false
// In this code, canVote will be set to "Yes" because age equal or greater than 18
let ageTernary = 18
let canVote = ageTernary >= 18 ? "Yes" : "No"
print(canVote)

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ LOOPS ~~~~~~~~~~~~~~~~~~~

// Swifts for loops run some code for every item in a collection, or in a custom range
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works on \(os)")
}

// You can also loop over a range of numbers
for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

// 1...12 contains the values 1 through 12 inclusive. If you want to exclude the final number, use ..< instead:
for i in 1..<13 {
    print("5 x \(i) is \(5 * i)")
}

// If you don’t need the loop variable, use _
var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}
print(lyric)

// There are also while loops, which execute their loop body until a condition is false
var count = 10

while count > 0 {
    print("\(count)...")
    count -= 1
}
print("Go!")

// You can use 'continue' to skip the current loop iteration and proceed to the following one
// Using 'break' instead of 'continue' will exit the loop as soon as the conditions are met. For example the below code would stop at me.jpg and exit the loop. Continue would just skip work.txt and carry on.
let files = ["me.jpg", "work.txt", "sophie.jpg"]

for file in files {
    if file.hasSuffix(".jpg") == false {
        continue
    }
    print("Found picture: \(file)")
}

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ FUNCTIONS ~~~~~~~~~~~~~~~~~~~

// To create a new function, write 'func' followed by your functions name, then add parameters inside parenthesis
// We need to write number: 5 at the call site, because the parameter name is part of the function call
func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTables(number: 5)

// To return data from a funtion, tell Swift what type it is, then use the 'return' keyword to send it back
// If your function containts only a single line of code, you can remove the 'return' keyword
func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ RETURNING MULTIPLE VALUES FROM FUNCTIONS ~~~~~~~~~~~~~~~~~~~

// Tuples store a fixed number of values of specific types, which is a convenient way to return multiple values from a function
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let userName = getUser()
print("Name: \(userName.firstName) \(userName.lastName)")

// If you dont need all the values from the tuple you can destructure the tuple to pull it apart into individual values, then _ to tell Swift to ignore some
let (firstName, _) = getUser()
print("Name: \(firstName)")

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ CUSTOMIZING PARAMETER LABELS ~~~~~~~~~~~~~~~~~~~

// If you dont want to pass an parameters name when calling a function, place an undercore before it

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let isItUppercased = isUppercase(string)
print(isItUppercased)

// An alternative is to write a second name before the first: one to use externally, and one to use internally
// In this code 'for' is used externally, and 'number' is used internally.
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ PROVIDING DEFAULT VALUES FOR PARAMETERS ~~~~~~~~~~~~~~~~~~~

// We can provide default parameter values by writing an equals after the type then providing a value
func greet(_ person: String, formal: Bool = false) {
    if formal {
        print("Welcome, \(person)!")
    } else {
        print("Hi, \(person)!")
    }
}
greet("ben", formal: true)
greet("ben")

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ HANDLING ERRORS IN FUNCTIONS ~~~~~~~~~~~~~~~~~~~

// To handle errors in functions you need to tell Swift which errors can happen

// First, define the errors that can occur. An enum is best for this
enum PasswordError: Error {
    case short, obvious
}

// Next, write a function that can throw errors. This is done by placing 'throws' into the functions type, then by using 'throw' to trigger specific errors
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

// Now call the throwing function by staring a 'do' block, calling the funtion by using 'try', then catching errors that occur
// When it comes to catching errors, you must always have a catch block that can handle every kind of error
let testPassword = "12345"

do {
    let result = try checkPassword(testPassword)
    print("Rating: \(result)")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error")
}

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ CLOSURES ~~~~~~~~~~~~~~~~~~~

// You can assign functionality directly to a constant or variable

let sayHello = {
    print("Hello there!")
}
sayHello()

// In that code, sayHello is a closure - a chunk of code we can pass around and call whenever we want. If you want the closure to accept parameters, they must be written inside the braces
// The in is used to mark the end of the parameters and return type – everything after that is the body of the closure itself
let sayHi = { (name: String) -> String in
    "Hi \(name)!"
}
print(sayHi("Ben"))



// Closures are used extensively in Swift. For example, there’s an array method called filter() that runs all elements of the array through a test, and any that return true for the test get returned in a new array.
let team = ["Gloria", "Suzanne", "Tiffany", "Tasha"]

let onlyT = team.filter({ (name: String) -> Bool in
    return name.hasPrefix("T")
})
print(onlyT)

// Immediately you can see that the body of the closure has just a single line of code, so we can remove return
// let onlyT = team.filter({ (name: String) -> Bool in
//     name.hasPrefix("T")
// })

// filter() must be given a function that accepts one item from its array, and returns true if it should be in the returned array.

// Because the function we pass in must behave like that, we don’t need to specify the types in our closure. So, we can rewrite the code to this:
// let onlyT = team.filter({ name in
//     name.hasPrefix("T")
// })

// We can go further using special syntax called trailing closure syntax, which looks like this:
// let onlyT = team.filter { name in
//     name.hasPrefix("T")
// }

// Finally, Swift can provide short parameter names for us so we don’t even write name in any more, and instead rely on a specially named value provided for us: $0:
// let onlyT = team.filter {
//     $0.hasPrefix("T")

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ STRUCTS ~~~~~~~~~~~~~~~~~~~

// Structs let us create our own custom data types, complete with their own properties and methods
struct Album {
    let title: String
    let artist: String
    var isReleased = true
    
    func printSummary() {
        print("\(title) by \(artist)")
    }
    // ⬇️ If you want to have a struct’s method change one of its properties, mark it as mutating:
    mutating func removeFromSale() {
        isReleased = false
    }
}

let red = Album(title: "Red", artist: "Taylor Switft")
print(red.title)
red.printSummary()

// When we create instances of structs we do so using an initializer – Swift lets us treat our struct like a function, passing in parameters for each of its properties. It silently generates this memberwise initializer based on the struct’s properties.

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ COMPUTED PROPERTIES ~~~~~~~~~~~~~~~~~~~

// A computed property calculates its value every time its accessed. For example, we could write an Employee struct that tracks how many days of vacation remained for that employee:
struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        vacationAllocated - vacationTaken
    }
}
let bob = Employee.init(name: "Bob", vacationAllocated: 10, vacationTaken: 4)
print(bob.vacationRemaining)

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ PROPERTY OBSERVERS ~~~~~~~~~~~~~~~~~~~

// Property observers are pieces of code that run when properties change: didSet runs when the property just changed, and willSet runs before the property changed

// We could demonstrate didSet by making a Game struct print a message when the score changes:
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ CUSTOM INITIALIZERS ~~~~~~~~~~~~~~~~~~~

// Initializers are special functions that prepare a new struct instance to be used, ensuring all properties have an initial value
// Swift generates one based on the structs properties, but you can create your own
struct Player {
    let name: String
    let playerNumber: Int
    
    init(name: String) {
        self.name = name
        playerNumber = Int.random(in: 1...99)
    }
}

let soccerPlayer = Player.init(name: "John")
print("The current player is \(soccerPlayer.name). His number is \(soccerPlayer.playerNumber)")

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ ACCESS CONTROL ~~~~~~~~~~~~~~~~~~~

// Swift has serveral options for access control inside structs, but four are the most common
// • Use private for "dont let anything outside the struct use this"
// • Use private(set) for “anything outside the struct can read this, but don’t let them change it.”
// • Use fileprivate for “don’t let anything outside the current file use this.”
// • Use public for “let anyone, anywhere use this.”

// Example
struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}
// Because we used private(set), reading funds from outside the struct is fine but writing isn’t possible

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ STATIC PROPERTIES AND METHODS ~~~~~~~~~~~~~~~~~~~

// Swift supports static properties and methods, allowing you to add a property or method directly to the struct itself rather than to one instance of the struct
struct AppData {
    static let version = "1.3 beta 2"
    static let settings = "settings.json"
}
print(AppData.version)

// Using this approach, everywhere we need to check or display something like the app’s version number we can read AppData.version.

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ CLASSES ~~~~~~~~~~~~~~~~~~~

// Classes let us create custom data types, and are different from structs in five ways

// 1. The first difference is that we can create classes by inheriting functionality from other classes

class workEmployee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: workEmployee {
    func work() {
        print("I'm coding for \(hours) hours.")
    }
    override func printSummary() {
        print("I spend \(hours) hours a day searching Stack Overflow.")
    }
}

let novall = Developer(hours: 8)
novall.work()
novall.printSummary()


// If a child class wants to change a method from a parent class, it must use override

// 2. The second difference is that initializers are more tricky with classes
    // • Swift won’t generate a memberwise initializer for classes
    // • If a child class has custom initializers, it must always call the parent’s initializer after it has finished setting up its own properties.
    // • If a subclass doesn’t have any initializers, it automatically inherits the initializers of its parent class.

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car : Vehicle {
    let isConvertable: Bool
    
    init(isElectric: Bool, isConvertable: Bool) {
        self.isConvertable = isConvertable
        super.init(isElectric: isElectric)
    }
}

// Super allows us to call up to methods that belong to our parent class, such as its initializer.

// 3. The third difference is that all copies of a class instance share their data, meaning that changes you make to one will automatically change other copies.

class Singer {
    var name = "Adele"
}

var singer1 = Singer()
var singer2 = singer1
singer2.name = "Justin"
print(singer1.name)
print(singer2.name)

// That will print “Justin” for both – even though we only changed one of them, the other also changed. In comparison, struct copies don’t share their data.

// 4. The fourth difference is that classes can have a deinitializer that gets called when the last reference to an object is destroyed.

class User {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
}

// 5. The final difference is that classes let us change variable properties even when the class itself is constant
// class User {
//var name = "Paul"
//}

//let user = User()
//user.name = "Taylor"
//print(user.name)

// As a result of this, classes don’t need the mutating keyword with methods that change their data.

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ PROTOCOLS ~~~~~~~~~~~~~~~~~~~

// Protocols define functionality we expect a data type to support, and Swift ensures our code follows those rules
protocol VehicleProtocol {
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

// Once you have your required functionality, you can make a struct that conforms to the protocol

struct CarTravel: VehicleProtocol {
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }
}

// All the methods listed in VehicleProtocol must exist exactly in CarTravel, with the same name, parameters, and return types.

// Now you can write a function that accepts any kind of type that conforms to VehicleProtocol, because Swift knows it implements both estimateTime() and travel():
func commute(distance: Int, using vehicle: VehicleProtocol) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("Too slow!")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = CarTravel()
commute(distance: 100, using: car)

// Protocols can also require properties, so we could require properties for how many seats vehicles have and how many passengers they currently have:

// protocol Vehicle {
//     var name: String { get }
//     var currentPassengers: Int { get set }
//     func estimateTime(for distance: Int) -> Int
//     func travel(distance: Int)
// }

// Now all conforming types must add implementations of those two properties, like this for Car:
// let name = "Car"
// var currentPassengers = 1

//That adds two properties: one marked with get that might be a constant or computed property, and one marked with get set that might be a variable or a computed property with a getter and setter.

// You can conform to as many protocols as you need, just by listing them separated with a comma.

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ EXTENSIONS ~~~~~~~~~~~~~~~~~~~

// Extensions let us add functionality to any type. For example, Swifts strings have a method for trimming whitespace and new lines, but its quite long so we could turn it into an extension
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

var quote2 = "   The truth is rarely pure and never simple   "
let trimmed = quote2.trimmed()
print(trimmed)

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ PROTOCOL EXTENSIONS ~~~~~~~~~~~~~~~~~~~

// Protocol extensions extend a whole protocol to add computed properties and method implementations, so any types conforming to that protocol get them
// For example, Array, Dictionary, and Set all conform to the Collection protocol, so we can add a computed property to all three of them like this:
extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

// This approach means we can list required methods in a protocol, then add default implementations of those inside a protocol extension. All conforming types then get to use those default implementations, or provide their own as needed

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ OPTIONALS ~~~~~~~~~~~~~~~~~~~

// Optionals represent the absence of data – for example, they distinguish between an integer having the value 0, and having no value at all.
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]

// That attempts to read the value attached to the key “Peach”, which doesn’t exist, so this can’t be a regular string. Swift’s solution is called optionals, which means data that might be present or might not


// An optional string might have a string waiting inside for us, or there might be nothing at all – a special value called nil, that means “no value”. Any kind of data can be optional, including Int, Double, and Bool, as well as instances of enums, structs, and classes.

// Swift won’t let us use optional data directly, because it might be empty. That means we need to unwrap the optional to use it – we need to look inside to see if there’s a value, and, if there is, take it out and use it.

// Swift gives us several ways of unwrapping optionals, but the one you’ll see most looks like this:

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

// That reads the optional value from the dictionary, and if it has a string inside it gets unwrapped – the string inside gets placed into the marioOpposite constant, and isn’t optional any more. Because we were able to unwrap the optional, the condition is a success so the print() code is run.

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ NIL COALESCING ~~~~~~~~~~~~~~~~~~~

// Swift has a third way of unwrapping optionals, called the nil coalescing operator – it unwraps an optional and provides a default value if the optional was empty:
let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favourite = tvShows.randomElement() ?? "None"
print(favourite)

// The nil coalescing operator is useful in many places optionals are created. For example, creating an integer from a string returns an optional Int? because the conversion might have failed. Here we can use nil coalescing to provide a default value:
let input = ""
let number2 = Int(input) ?? 0
print(number2)

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ OPTIONAL CHAINING ~~~~~~~~~~~~~~~~~~~

// Optional chaining reads optionals inside optionals
let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased()
print("Next in line: \(chosen ?? "No one")")

// Optional chaining is there on line 2: a question mark followed by more code. It allows us to say “if the optional has a value inside, unwrap it then…” and add more code. In our case we’re saying “if we got a random element from the array, uppercase it.”

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ~~~~~~~~~~~~~~~~~~~ OPTIONAL TRY? ~~~~~~~~~~~~~~~~~~~

// When calling a function that might throw errors, we can use try? to convert its result into an optional containing a value on success, or nil otherwise.
enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

// The getUser() function will always throw networkFailed, but we don’t care what was thrown – all we care about is whether the call sent back a user or not.
