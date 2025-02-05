// //extensions let us add new functionality to any typr


// extension String{
//     func trimmed() -> String{
//         self.trimmingCharactera (in: .whitespacesAndNewlines)
//     }
// }

// var quote = "   To be or not to be   "
// let trimmed = quote.trimmed()


//if we want to directlt change the value instead of returning a new value we use mutating keyword
// extension String{
//     func trimmed() -> String{
//         self.trimmingCharacters (in: .whitespacesAndNewlines)
//     }
//     mutating func trim(){
//         self = self.trimmed()
//     }
//     var lines : [String]{
//         self.components(separatedBy: .newlines)

// }
// }

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}
var quote = "   To be or not to be   "
let lyrics = """
    I am a poor wayfaring stranger
    While traveling through this world of woe
    Yet there's no sickness, toil or danger
    In that bright world to which I go
    """

print (lyrics.lines.count)

