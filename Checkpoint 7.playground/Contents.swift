import Cocoa

// CHECKPOINT 7. Classes.

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Woof woof, I'm a dog with \(legs) legs")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Wan wan, I'm a Corgi with \(legs) legs")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Woof woof, I'm a Poodle with \(legs) legs")
    }
}

class Cat: Animal {
    func speak() {
        print("Meeeeoow, I'm a cat with \(legs) legs")
    }
    let isTame: Bool
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    func tameOrNot() {
        print(isTame)
    }
}

class Persian: Cat {
    override func speak() {
        print("Wassup I'm a Persian with \(legs) legs")
    }
}

class Lion: Cat {
    override func speak() {
        print("Roar I'm a Lion with \(legs) legs")
    }
}

let dog = Dog.init(legs: 4)
dog.speak()

let corgi = Corgi.init(legs: 1)
corgi.speak()

let poodle = Poodle.init(legs: 5)
poodle.speak()

let cat = Cat.init(legs: 3, isTame: true)
cat.speak()
cat.tameOrNot()

let persian = Persian.init(legs: 4, isTame: false)
persian.speak()
persian.tameOrNot()

let lion = Lion.init(legs: 2, isTame: false)
lion.speak()
lion.tameOrNot()
