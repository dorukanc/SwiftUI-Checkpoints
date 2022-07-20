import Cocoa

let someArray : [String] = ["Almond Bear", "Jesse Pinkman", "Alfred", "Dorukan", "Becnhi","Jesse Pinkman"]
print(someArray.count)
// putting our array inside of a set to find out how many unique items we have.
let decoArray = Set(someArray)
print(decoArray.count)

