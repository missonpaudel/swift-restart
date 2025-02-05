// //classes allow us to create custom data types
// //the diff betn structs and classes are as 
// // classes can inherit properties from other classes while structs cant

// class Employee{
//     let hours: Int

//     init(hours: Int){
//         self.hours = hours
//     }
//     func printsummary(){
//         print("I worked \(hours) hours")
//     }
// }
// class Developer: Employee{
//     func work(){
//         print ("I am coding for \(hours) hours a day")
//     }
//     //if a child class wants to change the method inherited from the parent class we must use the keyword override
//     override func printsummary(){
//         print("I am a developer and I worked \(hours) hours")
//     }
// }

// let noah = Developer(hours: 8)
// noah.work()
// noah.printsummary()

// classes dont have prebuilt initializers like structs

// class Vehicle{
//     let isElectric : Bool
//     init(isElectric : Bool){
//         self.isElectric = isElectric
//     }
// }

// class Car : Vehicle{
//     let isConvertible : Bool
//     init (isElectric : Bool , isConvertible : Bool){
//         self.isConvertible = isConvertible
//         super.init(isElectric: isElectric)//we have to call the initializer of parent class using super.init
//     }

// }
// let tesla = Car(isElectric: true, isConvertible: true)
// print(tesla.isElectric)

// //classes in swift are a chaos 
// //if we create a class and assign it to another variable, the new variable will point to the same memory location as the original variable hence when valueof one is changed, both change simultaneously

// class Actor{
//     var name : String
//     init(name : String){
//         self.name = name
//     }
// }
// var actor = Actor(name : "Tom")
// var actor2 = actor
// print (actor.name)
// print (actor2.name)
// actor2.name = "Jerry"
// print(actor.name)
// print(actor2.name)

//classes can have a deinitializer when needed

class Site{
    let id: Int
    init(id: Int){
        self.id = id
        print("Site \(id) I've been created")
    }
    deinit{
        print("Site \(id) I've been destroyed")
    }
}
for i in 1...3{
let site = Site(id: i)
print("Site \(site.id) : I am in control")
}