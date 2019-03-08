//: [Previous](@previous)
//: # Collection types
import Foundation
//: ## Arrays
//: ### Declaration
example(of: "Array declaration") {
    let _ =  Array<String>()
    let _ = [String]()
    let _: [String] = []
    
    var attendees = ["Martin", "Tomas"]
    
    print(attendees[0])
    
    attendees[0] = "Jan"
    print(attendees[0])
}
//: ### Properties and methods
example(of: "Array properties and methods") {
    var attendees = ["Martin", "Tomas"]
    
    print(attendees.count)
    print(attendees.isEmpty)
    
    if let firstElement = attendees.first {
        print(firstElement)
    }
    
    attendees.append("Jan")
    attendees.append(contentsOf: ["Barborka"])
    
    attendees.insert("Vasek", at: 0)
    attendees.remove(at: 0)
    print(attendees)
    
    // print(attendees[10])
}
//: ### Loop array
example(of: "Loop array") {
    let attendees = ["Martin", "Tomas"]
    
    for attendee in attendees {
        print(attendee)
    }
    
    for index in 0...attendees.count-1 {
        print(attendees[index])
    }
    
    for tuple in attendees.enumerated() {
        print("\(tuple.element) is at \(tuple.offset)")
    }
}

//: ## Sets
//: ### Declaration
example(of: "Set declaration") {
    let attendees = ["Martin", "Tomas", "Martin"]
    let set = Set(attendees)
    print(set)
}
//: ## Dictionaries
//: ### Declaration
example(of: "Dictionary declaration") {
    // Dictionary<...>()
    // _ = [...]()
    // _: [...]
    
    var namesOfAttendess = [
        "Schwarz": "Jan",
        "Kaltoun": "Jan"
    ]
    
    print(namesOfAttendess["Kaltoun"].debugDescription)
    print(namesOfAttendess["jfklsdjf"].debugDescription)
    
    namesOfAttendess["Kaltoun"] = "Barborka"
    print(namesOfAttendess["Kaltoun"].debugDescription)
}
//: ### Loop
example(of: "Loop dictionary") {
    let namesOfAttendess = [
        "Schwarz": "Jan",
        "Kaltoun": "Jan"
    ]
    
    for tuple in namesOfAttendess {
        print("\(tuple.key) \(tuple.value)")
    }
    
    for (surname, firstname) in namesOfAttendess {
        print("\(surname) \(firstname)")
    }
}
//: [Next](@next)
