//: [Previous](@previous)
//: # Structures, classes, enumerations
import Foundation
//: ## Structures
//: ### Declaration
example(of: "Struct declaration") {
    struct Person {
        let firstName: String
        let lastName: String
    }
    
    let person = Person(firstName: "Jan", lastName: "Schwarz")
    print(person)
}

//: ### Explicit initializer
example(of: "Struct with explicit initializer") {
    struct Person {
        let firstName: String
        let lastName: String
        
        init() {
            firstName = "Jan"
            lastName = "Schwarz"
        }
    }
    
    let person = Person()
    print(person)
}

//: ### Mutating
example(of: "Mutating structure") {
    struct Person1 {
        let firstName: String
        let lastName: String
    }

    let person1 = Person1(firstName: "Jan", lastName: "Schwarz")
    //person1.firstName = "Honza"
    
    struct Person2 {
        var firstName: String
        var lastName: String
        
        mutating func update(firstName: String) {
            self.firstName = firstName
        }
    }
    
    var person2 = Person2(firstName: "", lastName: "")
    person2.firstName = "Jan"
    print(person2)
    
    person2.update(firstName: "Honza")
    print(person2)
}

//: ### Value type
example(of: "Value type") {
    struct Person {
        var firstName: String
        var lastName: String
    }

    let person1 = Person(firstName: "Jan", lastName: "")
    var person2 = person1
    
    person2.firstName = "Honza"
    
    print(person1.firstName)
    print(person2.firstName)
}

//: ### Inheritance
example(of: "Inheritance") {
    struct Person {
        var firstName: String
        var lastName: String
    }

//    struct UppercasedPerson: Person {
//    }
    
    // Structures cannot inherit from other sturctures
}

//: ## Classes
//: ### Declaration
example(of: "Class declaration") {
    class Person {
        let firstName: String
        let lastName: String
        
        init(firstName: String, lastName: String) {
            self.firstName = firstName
            self.lastName = lastName
        }
    }
    
    let person = Person(firstName: "", lastName: "")
    print(person)
}

//: ### Mutating
example(of: "Mutating class") {
    class Person1 {
        let firstName: String
        let lastName: String
        
        init(firstName: String, lastName: String) {
            self.firstName = firstName
            self.lastName = lastName
        }
    }
    
    let person1 = Person1(firstName: "", lastName: "")
    //person1.firstName = "Jan"
    
    class Person2 {
        var firstName: String
        var lastName: String
        
        init(firstName: String, lastName: String) {
            self.firstName = firstName
            self.lastName = lastName
        }

        func update(firstName: String) {
            self.firstName = firstName
        }
    }
    
    let person2 = Person2(firstName: "", lastName: "")
    person2.firstName = "Jan"

    person2.update(firstName: "Honza")
    print(person2.firstName)
}

//: ### Reference type
example(of: "Reference type") {
    class Person {
        var firstName: String
        var lastName: String
        
        init(firstName: String, lastName: String) {
            self.firstName = firstName
            self.lastName = lastName
        }
    }
    
    let person1 = Person(firstName: "", lastName: "")
    let person2 = person1
    
    person2.firstName = "Jan"
    
    print(person1.firstName)
    print(person2.firstName)
}

//: ### Inheritance
example(of: "Inheritance") {
    class Person {
        var firstName: String
        var lastName: String
        
        init() {
            self.firstName = "Jan"
            self.lastName = "Schwarz"
        }
    }
    
    class UppercasedPerson: Person {
        override init() {
            super.init()
            
            self.firstName = "JAN"
            self.lastName = "SCHWARZ"
        }
    }
    
    let person = UppercasedPerson()
    print(person.firstName)
}

//: ## Enumerations
//: ### Declaration
example(of: "Enum declaration") {
    enum Langauge {
        case swift
        case objc
    }
    
    let lang = Langauge.swift
    print(lang)
}

//: ### Enum with raw value
example(of: "Enum with raw value") {
    enum Langauge: String {
        case swift
        case objc = "objective-c"
    }
    
    let swift = Langauge(rawValue: "swift")
    let objc = Langauge(rawValue: "objective-c")
    let unknown = Langauge(rawValue: "jdkfjsd")
    
    print(type(of: swift))
    print(swift!)
    print(objc!)
    print(unknown.debugDescription)
    print(Langauge.swift.rawValue)
}

//: ### Enum with associated value
example(of: "Enum with associated value") {
    enum Langauge {
        case swift
        case objc
    }
    
    enum Platform {
        case android
        case ios(language: Langauge)
    }
    
    let platform = Platform.ios(language: .swift)
    print(platform)
}

//: [Next](@next)
