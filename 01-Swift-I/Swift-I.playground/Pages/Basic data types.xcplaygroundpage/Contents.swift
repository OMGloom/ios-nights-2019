//: # Basic data types
import Foundation

//: ### Strings
example(of: "Strings") {
    let helloWorld = "Hello world!"
    print(type(of: helloWorld))
    let helloWorld1: String = "Hello\nWorld!"
    print(helloWorld1)
    let multilineString = """
        Hello
        jfkldsjfkj
        kjkjkl  jkljk kfjdsklj
        dkfjdskf
        World
    """
    print(multilineString)
}
//: ### Mutability
example(of: "Mutability") {
    let name = "Jan"
    // name = "Honza"
    /*
     Comment
    */
    var lastName = "Schwarz"
    lastName = "Kaltoun"
    print(lastName)
}
//: ### Numbers
example(of: "Numbers") {
    let age: Int = 28
    let height: Double = 1.75
    print(type(of: height))
    let floatHeight: Float = 1.75
    print(type(of: floatHeight))
}
//: ### Boolean
example(of: "Boolean") {
    var completed: Bool = false
    completed = true
    completed.toggle()
    print(completed)
}
//: ### Tuple
example(of: "Tuple") {
    let tuple: (firstName: String, lastName: String) = ("Jan", "Schwarz")
    print(tuple.firstName)
    
    let tuple1: (String,String) = ("Jan", "Schwarz")
    print(tuple1.0)
}
//: [Next](@next)
