import Foundation

protocol SoundProducer {
    // Emit some characteristic sound
    func emitSound() -> String
}

protocol LegsOwner {
    var numberOfLegs: Int { get }
}

protocol Animal: SoundProducer, LegsOwner {
    // Name of the animal
    var name: String { get set }
}

protocol Farmer {
    var name: String { get set }
}

protocol Farm {
    // Get list of all animals on the farm
    var animals: [Animal] { get }
    
    // Count legs for all animals on the farm
    var numberOfLegs: Int { get }
    
    // Get or set a farmer
    var farmer: Farmer? { get set }
    
    // Add animal to the farm
    mutating func add(animal: Animal)
    
    // Make all animals to emit sound
    func makeNoise() -> [String]
}
