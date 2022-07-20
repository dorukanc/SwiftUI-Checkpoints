import Cocoa

struct Car{
    
    private let model: String
    private let numberOfSeats: Int
    private let maximumGear = 10
    private(set) var currentGear: Int{
        didSet{
            if currentGear == 0{
                currentGear = oldValue
            }
        }
    }
    init(model: String, numberOfSeats: Int, gear: Int) {
        self.model = model
        self.numberOfSeats = numberOfSeats
        self.currentGear = gear
    }
    mutating func changeGear(isGearUp: Bool){
        
        if  currentGear == maximumGear{
            currentGear += 0
        }else if isGearUp && currentGear < maximumGear{
            currentGear += 1
        }else{
            currentGear -= 1
        }
    }
    
}

// setting our inital data
var car = Car(model: "Audi", numberOfSeats: 4, gear: 4)
// testing our gear method
for _ in 1...10{
    car.changeGear(isGearUp: true)
    print(car.currentGear)
}


