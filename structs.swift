//structs let us make our own data types consisting of its own variables and functions

struct Album {
    let title: String
    let artist: String
    var isReleased: Bool = true
    func printSummary(){
        print("\(title) by \(artist)")
    }
    mutating func markAsNotReleased(){
        isReleased = false
    }//mutating keyword is used when a method inside a struct changes the value of a property
}
let red =  Album(title: "Red",artist: "Taylor Swift")
red.printSummary()

//computed properties
//these are properties that are calculated when the function is calles ie they are not stored in memory

struct Employee{
    let name : String
    var vacationAllowed : Int = 20
    var vacationTaken : Int = 0

    var vacationRemaining :Int{
        get{ vacationAllowed - vacationTaken//this is only a getting type of property
        }
        //to set value of a computed property we use set
        set{
            vacationAllowed = vacationRemaining + newValue
        }
    }
}

var employee = Employee(name: "Misson")

print("Vacation Remaining: \(employee.vacationRemaining)")

employee.vacationRemaining = 15


print("Updated Vacation Allowed: \(employee.vacationAllowed)")


//property observers
//they are a piece of code that runs when a property changes
// two types : did set changes after the property is changed
// will set changes before the property is changed

struct Game{
    var score = 0 {
        didSet{
            print("score is now \(score)")
        }
    }
}
var game = Game()
game.score+=10
game.score-=5

//Initializers
//they are special functions that run when a new instance of struct is created.It must make sure that all property inside the struct have their value set
//they are like constructors in C++.they are generally prebuilt by swift but sometimes we create custom initializers

struct Player{
    let name: String
    let number: Int

    init (name: String){
        self.name = name
        self.number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Misson")
print (player)


//ACCESS SPECIFIERS
//4 most common
// PRIVATE: nothing from outside the struct can read or write it
//PRIVATE SET:something outside can read it but only insiders can write it
//FILE PRIVATE: anything inside the current file ca read or write it
//PUBLIC: anyone anywhere can read or write it


struct BankAccount{
    private(set) var funds = 0

    mutating func deposit(amount: Int){
        funds += amount
    }
    mutating func withdraw(amount: Int) -> Bool
    {
        if funds >= amount{
            funds -= amount
            return true
        }
        else{
            return false
        }
    }
}

var account = BankAccount(funds:1000)
print(account.funds)

account.funds += 100 //this wont work


//static proprties and methods
//they are shared by every struct rather than a particular instance of a struct


struct AppData {
    static let version = "18.1 beta"
    static let settingsFile = "appSettings.json"

}

print(AppData.version)// we can read it directly instead of creating an instav]nce for the struct
