import Cocoa


/*
func decoSquare(_ number:Double) -> Double{
    var root = number
    var y = 1.0
    while root-y > 0.0{
        root = (root + y)/2
        y = number / root
    }
    return root
    }
decoSquare(9)

*/

enum SquareError : Error{
    case outRange, noRoot
}

func Square(_ number:Int) throws -> Int{
    
    if number > 1 && number < 10_000{
        for i in 1...number+1{
            if (i * i == number) && (number % i == 0){
                return i
            }
        }
    }else{
        throw SquareError.outRange
    }
    
    throw SquareError.noRoot
    
}

do{
    try Square(10_000)
}
catch SquareError.noRoot{
    print("No root has found.")
}
catch SquareError.outRange{
    print("Your input is out of range.")
}catch{
    print(error.self.localizedDescription)
}

