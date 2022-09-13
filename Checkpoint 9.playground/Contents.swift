import Cocoa

func randomNum (numbers: [Int]?) -> Int {
    numbers?.randomElement() ?? Int.random(in: 1...100)
}

print(randomNum(numbers: [3, 5]))
//if there are numbers in the array, print one at randomm
print(randomNum(numbers: []))
//if no numbers are in the array then print a random number from 1 through 100


