import Cocoa


// single line of code.
func randomArray(array: [Int]?) -> Int {array?.randomElement() ?? Int.random(in: 1...100)}


// testing our function
print(randomArray(array: nil))









