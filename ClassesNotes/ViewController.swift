import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
      var b = Boss()
        var b2 = Boss(health: 47.5, power: 4, name: "Bob", image: "bobImage")
        
        print(b.health)
        //have to explicitly call
        print(b.toString())
        
        //creating a blank array of bosses
        var bosses = [Boss]()
        bosses.append(b)
        bosses.append(b2)
        
        //For each loop to print the array
        for boss in bosses {
            print(boss.toString())
        }
        
        var selectedBoss = bosses[0]
        selectedBoss.health = 10000
        
        for boss in bosses {
            print(boss.toString())
        }
        
        var bStruct = Boss2(health: 2.5, power: 3, name: "hi", image: "hello")
        
        
        sayHello(blah: b)
      
        
    }
    func sayHello(blah: Death){
        blah.die()
    }
    


}

