import Foundation

//enum is a set of named values that we can used that makes our code more readable

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}
var day = Weekday.monday
day = .tuesday //we can use the shorthand syntax to assign a value to the variable
//value of enum has the same data type as the enum

//typeannotation
var score: Double = 0
var luckyNumber: Int = 7
let pi:Double = 3.14
var albums: Array<String> = ["Red","1989","Reputation"]
var user: Dictionary<String,String> = [
    "name":"Misson",
    "job":"scroller"
]

//since arrays and dictionaries are used more often we can use the shorter syntaxes for then tht is
var colors:[String] = ["red","green","blue"]

var employee:[String: String] = [
    "name" : "Misson",
    "job" : "scroller",
]
// knowing what type of data is supposed to be stored is beneficial when we have to create empty collections
var teams = [String]() //creates an empty array
enum UIstyle {
    case light, dark , system 
}
var style : UIstyle = .light
