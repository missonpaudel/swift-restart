
// var creates a variable
//const creates a constant

let quote = "He tapped a sign saying \"Believe in karma\" and walked away.";
//we used \\ so that we can use double quotes in the string

let statement = """
it was great
that was a great movie
it was so fun to be with you
""";
//we use triple quotation marks to write multiple lines of string

print(quote.count);//prints the number of characters in the string
print(quote.hasPrefix("He")); //checks if the string starts with the given string
//and the result is printed 
print(quote.hasSuffix("away")); //checks if the string ends with the given string and prints the result

var isSaved = false;
isSaved.toggle(); //toggles the value of the variable;
print(isSaved);


let id = Int.random(in: 0...100); 
//generates a random number between 0 and 100
print(id);

//if anumber with decimal points is created,swift will automatically consider it as a double even if the number is a whole number ie 5.0 is considered as a double

let name="Misson"
let age=19
let message="Hello my name is \(name) and I am \(age) years old"
//we use \(variable) to insert a variable in a string so that we can print the value of the variable this is called string interpolation

print(message)


//grouping items in an array
var colors = ["red","green","blue"]
colors.append("yellow") //adds an item to the array
colors.insert("orange", at:1) //inserts an item at a specific index
print(colors)
print(colors.count) //prints the number of items in the array
colors.remove(at:2) //removes an item at a specific index
print(colors.contains("blue")) //checks if the array contains the given item and prints the result




//dictionary it stores key value pairs
let employee = [
    //"name" : "Misson",
    "job" : "scroller",

]

//print(employee)//prints all the data in the dictionary
print(employee["name"])//when we try to access a key that does not exist in the dictionary it will return nil
// if we use ! after the key it will force unwrap the value and if the key does not exist it will crash the program
print(employee["job"], default:"unknown")//if the key does not exist it will print the default value




//set
//sets are similar to arrays except for the fact that they don't allow duplicates and they are unordered

var numbers = set([1,1,2,4,5,9,10])
print(numbers) // this prints the set by removing the duplicates and the order of elements is not as the same as we added



