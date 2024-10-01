//Making an enum
//Data type is status
enum Status {
case dead, enraged, dying, healthy
}

//Making a protocol
//Similar to an interface in Java
protocol Death{
    func die()
}

import Foundation

//Adopting the Death protocol
class Boss : Death{
  
    var health : Double
    var power : Int
    var name : String
    var image : String
    var weapons = [Weapon]()
    var myStatus : Status
    
    init(health: Double, power: Int, name: String, image: String) {
        self.health = health
        self.power = power
        self.name = name
        self.image = image
        myStatus = Status.healthy
    }
    

    init() {
        health = 100
        power = 2
        name = "John Doe"
        image = "Missing"
        //Same as saying:    myStatus = Status.healthy
        myStatus = .healthy
    }
    
    func addWeapon(){
        var blah = Weapon(damage: 2, durability: 0.7, type: "Mace")
        weapons.append(blah)
    }
    
    func hit(){
        health -= 2.0
        
    }
    func hit(damage : Double){
        health -= damage
    }
    
    //Switch statement with an enum
    func lifeCheck(){
        switch myStatus {
        case .dead:
            print("dead")
        case .enraged:
            print("enraged")
        case .dying:
            print("dying")
        case .healthy:
            print("healthy")
        }
    }
    
    
    func die() {
        print("You are dead.")
    }
    
    
    //must create your own toSting function
    func toString()->String{
        return "Health: \(health) \n Power: \(power) \n Name: \(name) \n Image: \(image)"
    }
    
   
    
}
