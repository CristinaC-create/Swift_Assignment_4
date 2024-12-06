import UIKit

/*1.Create a base protocol with common properties or methods for monsters.
  2.Derive two child protocols for specific monster types.
  3.Create four classes (two flying and two water monsters) conforming to these child protocols.
  4.Write a function that accepts a collection of Monster objects and prints details about each.*/


// Base Protocol
protocol Monster {
    var name: String { get }

    func roar() -> String
}
// Child Protocols
protocol FlyingMonster: Monster {
    var wingSpan: Double { get }
    
    func fly() -> String
}

protocol WaterMonster: Monster {
    var swimSpeed: Int { get }
    
    func swim() -> String
}
// Class 1 = Dragon
class Dragon: FlyingMonster {
    var name: String
    var wingSpan: Double

    
   init(name: String, wingSpan: Double) {
        self.name = name
        self.wingSpan = wingSpan
    }
    
    func roar() -> String {
        return "\(name) lets out a thunderous roar shaking the ground!"
        
    }
    
    func fly() -> String {
        return "\(name) spread its \(wingSpan) - meter wings and soares elegantly through the skies!"
    }
}
// Class 2 = Gryphon
class Gryphon: FlyingMonster {
    var name: String
    var wingSpan: Double
    
    init(name: String, wingSpan: Double) {
        self.name = name
        self.wingSpan = wingSpan
    }
    func roar() -> String {
        return "\(name) unleashes an earth-shaking roar"
    }
    func fly() -> String {
        return "\(name) ascends swiftly through the skies with \(wingSpan) - meter wings!"
    }
}
// Class 3 = Kraken
class Kraken: WaterMonster {
    var name: String
    var swimSpeed: Int
    
    init(name: String, swimSpeed: Int) {
        self.name = name
        self.swimSpeed = swimSpeed
    }
    func roar() -> String {
        return "\(name) comes from the depths of the sea, causing waves to crash!"
    }
    func swim() -> String {
        return "\(name) swims with its \(swimSpeed) - meter tail!"
    }
}
// Class 4 = Merfolk
class Merfolk: WaterMonster {
    var name: String
    var swimSpeed: Int
    
    
    init(name: String, swimSpeed: Int) {
        self.name = name
        self.swimSpeed = swimSpeed
    }
    func roar() -> String {
        return "\(name) sings an enchanting melody that stirs the sea!"
    }
    func swim() -> String {
        return "\(name) glides gracefully through the water at \(swimSpeed) knots!"
    }
}
// Function to Handle Monsters
func printMonsterDetails(monsters: [Monster]) {
    for monster in monsters {
        print(monster.roar())
        if let flyingMonster = monster as? FlyingMonster {
            print(flyingMonster.fly())
        } else if let waterMonster = monster as? WaterMonster {
            print(waterMonster.swim())
        }
    }
}

let flameReaper = Dragon(name: "Flame Reaper", wingSpan: 15.0)
let nimbusWing = Gryphon(name: "Nimbus Wing", wingSpan: 12.0)
let tideCrusher = Kraken(name: "Tide Crusher", swimSpeed: 20)
let seaEmpress = Merfolk(name: "Sea Empress", swimSpeed: 10)

let monsters: [Monster] = [flameReaper, nimbusWing, tideCrusher, seaEmpress]
printMonsterDetails(monsters: monsters)
