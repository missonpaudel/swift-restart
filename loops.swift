let platform = ["ios","macos","tvos","watchos"]

for os in platform{
    print ("swift works on \(os)")
}
// for every os in platform it prints the string

//looping in a range of numbers
for i in 1...12{
    print (i)
}
//if we want it to count till 11 we use ..< instead of ...
for i in 1..<12{
    print (i)
}
// if we want the increment to be 2 we can use stride
//stride is used when we want to skip by a certain number of values
for i in stride(from: 2, to: 12, by: 2){
    print (i)
}

//  while
var count = 10
while count > 0{
    print ("\(count)...")
    count -= 1
}
print ("Go!")


//break and continue


let files = ["bdfh.jpg","hdg.txt","yhgsfy.docx", "jdfh.pptx"]
for file in files{
    if file.hasSuffix(".jpg") == false{
        continue
    }
    print ("picture found: \(file)")
}

func tableOfNumber(n: Int) {
    for i in 1...10 {
        print("\(n) * \(i) is \(n * i)")
    }
}

tableOfNumber(n: 8)

func rolldice()-> Int{
    return Int.random(in: 1...6)
}
print (rolldice())