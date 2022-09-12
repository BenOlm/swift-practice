import Cocoa

protocol Building {
    var buildingType: String { get }
    var rooms: Int { get }
    var cost: Int { get set }
    var estateAgentName: String { get set }
    
    func salesSummary()
}

struct House: Building {
    var buildingType = "House"
    var rooms = 3
    var cost = 350_000
    var estateAgentName = "Joe Mama"
    
    func salesSummary() {
        print("Sale Summary:")
        print(buildingType)
        print("There are \(rooms) rooms")
        print("The price is $\(cost)")
        print("The estate agent is \(estateAgentName)")
        print("  ")
    }
}

struct Office: Building {
    var buildingType = "Office"
    var rooms = 20
    var cost = 740_000
    var estateAgentName = "Boe Jiden"
    
    func salesSummary() {
        print("Sale Summary:")
        print(buildingType)
        print("There are \(rooms) rooms")
        print("The price is $\(cost)")
        print("The estate agent is \(estateAgentName)")
        print("  ")
    }
}

let house = House()
house.salesSummary()

let office = Office()
office.salesSummary()
