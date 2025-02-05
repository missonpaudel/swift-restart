// //tuples store fix number of values of any type

// func getUser() -> (firstName : String, lastName : String, age : Int){
// ("Misson", "Scroller", 19)
// }
// let user = getUser()
// print("\(user)")// (firstName: "Misson", lastName: "Scroller", age: 19) 
// let (firstName , _, _) = getUser()
// print(firstName)


//default parameters
//default values for parameters are given in the function parameters it is changed only if the vallues for given parameter is passed during function calling

func greet( person: String,formal: Bool = false){
    if formal{
        print("Hello Mr. \(person)")
    }
    else{
        print("Hi \(person)")
    }
}

greet(person: "Mansoon",formal:true)