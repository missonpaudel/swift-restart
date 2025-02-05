// we can assign functionality directly to the constant or variable by using closures
//closures are similar to blocks in c

let sayhello = {
    print ("hi there")

}
//here sayhello is a closure ie a chunk of code that can be passed around and used in our code
sayhello()

// if we want to pass a parameter to a closure we writhe the parameters inside the braces

let sayHelloAgain = {
    (name: String) -> String in //in here marks the end of the parameters and the return type
    "Hi \(name)"
}


let team = ["Misson","Jeevan","Govinda","Dikshya","Karuna","Keshav","Sujan"]
let removeK = team.filter({(name:String )-> Bool in 
return !name.hasPrefix("K")})
print(removeK)

//we can write above code in a shorter way as
let removeK2 = team.filter({name in
return !name.hasPrefix("K")
})

//we can also not use the name of the parameter and use $0,$1 and so on
let removeK3 = team.filter{ return !$0.hasPrefix("K")}
