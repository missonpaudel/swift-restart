//protocols define functionality other typees to adopt

protocol Vehicle{
    var name : String {get}//might be a constant or computes property
    var currentPassengers : Int {get set}
    func estimateTime( for distance : Int) -> Int
    func travel (distance: Int) 
}//these are the list of methods for this protocol to wrok they dont have no body in the functions
// we only specify the name ,parameters and return type of the function

//we make other types conform to the protocol by implementing the required functions

struct Car : Vehicle{
    let name = "Car"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int{
        distance / 50
    }
    func travel(distance: Int){
        print("The car has traveled \(distance) miles")
    }
    // all the methods inside protocol must be inside the conforming types
    func openSunroof(){
        print("Sunroof is open")
    }
}
func commute(distance : Int , vehicle : Vehicle){
    if vehicle.estimateTime(for: distance) > 100{
        print("The vehicle is too slow")
    }else{
        vehicle.travel(distance: distance)
    
    }
}

let tesla = Car()
commute( distance: 150 , vehicle: tesla)
//protocols can also require properties

