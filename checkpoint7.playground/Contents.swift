import Cocoa

class Animal{
    var legs: Int
    init(legs: Int) {
        self.legs = legs
    }
}
// subclasses of animal
class Dog : Animal{
    
    init(){
        super.init(legs: 4)
    }
    
    func speak(){
        print("Bow-wow")
    }
    
}

class Cat : Animal{
    
    let isTame : Bool
    
    init(isTame: Bool){
        self.isTame = isTame
        super.init(legs: 4)
    }
    
    func speak(){
        print("Meow-meow")
    }
}
// subclasses of dog
class Corgi: Dog{
    
    override func speak() {
        print("Wow-bow")
    }
    
}


class Poodle : Dog{
    
    override func speak() {
        print("Wow-wow bow")
    }
    
}
// subclasses of cat
class Persian : Cat{
    
    override func speak() {
        print("Meow-meow purr")
    }
    
}

class Lion: Cat{
    
    override func speak() {
        print("Waaauwww")
    }
    
}

// testing out.

let cat = Cat(isTame: true)
cat.speak()

let lion = Lion(isTame: false)
lion.speak()

let persian = Persian(isTame: true)
persian.speak()

let dog = Dog()
dog.speak()

let corgi = Corgi()
corgi.speak()

let poodle = Poodle()
poodle.speak()
