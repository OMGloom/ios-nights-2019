//: [Previous](@previous)
//: # Optionals
import Foundation
//: ## Introduction
//: ### Why optionals
example(of: "Type casting") {
    let stringAge = "a"
    let age = Int(stringAge)
    print(type(of: age))
}
//: ### Declare an optional
example(of: "Optional integer") {
    var age: Int?
    age = 28
    print(age.debugDescription)
    age = nil
    print(age.debugDescription)
    
    // var nonOptionalAge = 28
    // nonOptionalAge = nil
}
//: ## Unwrapping
//: ### Force unwrap
example(of: "Force unwrap") {
    var age: Int? = 29
    print(age)
    
    if age == nil {
        print("There is a nil")
    } else if age == 28 {
        print("Age is 28")
    } else {
        print("Age is \(age!)")
    }
    
//    age = nil
//    print("Age is \(age!)")
}
//: ### If let
example(of: "If let") {
    let age: Int? = 28
    
    if let unwrappedAge = age {
        print("My age is \(unwrappedAge)")
        print(type(of: age))
        print(type(of: unwrappedAge))
    }
}
//: ### Guard let
example(of: "Guard let") {
    let age: Int? = 28
    
    guard let unwrappedAge = age else {
        print("There was a nil")
        return
    }
    
    print("My age is \(unwrappedAge)")
    print(type(of: age))
    print(type(of: unwrappedAge))
}
//: ## Working with optionals
//: ### Comparison
example(of: "Comparison") {
    let age: Int? = 29
    
    if age == nil {
        print("It is nil")
    } else if age == 28 {
        print("It is 28")
    } else if let age = age, age > 28 {
        print("It is greater")
    }
}
//: ### Calling function on optional
example(of: "Calling function on optional") {
    var age: Int? = 29
    
    if let age = age {
        print(age.signum())
    }
    
    let advanced = age?.advanced(by: 2)
    print(type(of: advanced))
    
    let distance = age!.distance(to: 30)
    print(type(of: distance))
    age = nil
    // age!.distance(to: 30)
}
//: ### Implicitly unwrapped optional
example(of: "Implicitly unwrapped optional") {
    var age: Int!
    age = 28
    print(age.signum())
    let signum = age.signum()
    print(type(of: signum))
    
    age = nil
    // print(age.signum())
}
//: [Next](@next)
