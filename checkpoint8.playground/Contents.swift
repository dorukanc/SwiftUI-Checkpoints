import Cocoa

protocol Property{
    var howManyRooms : Int { get }
    var cost : Int {get}
    var agent : String { get }
    func salesSum()
}

extension Property{
    func salesSum(){
        print("Hi my name is \(agent). This property has \(howManyRooms) rooms. And, the price is \(cost) dollars.")
    }
}

struct House : Property{
    let howManyRooms: Int
    let cost: Int
    let agent: String
}

struct Office : Property{
    let howManyRooms: Int
    let cost: Int
    let agent: String
}

let house = House(howManyRooms: 4, cost: 300_000, agent: "Ahmet Usta")
house.salesSum()
let office = Office(howManyRooms: 4, cost: 100_000, agent: "Memhmet Ali")
office.salesSum()

