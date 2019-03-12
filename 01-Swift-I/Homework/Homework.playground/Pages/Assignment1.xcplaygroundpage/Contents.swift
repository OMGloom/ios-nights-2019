import Foundation

// Implement merging of multiple dictionaries
// The method returns a resulting dictionary
// If there is a conflict of keys add the two values
// Example 1: Merge of ["one": 1, "two": 2] and ["three": 3] results in ["one": 1, "two": 2, "three": 3]
// Example 2: Merge of ["one": 1, "two": 2] and ["one": 3] results in ["one": 4, "two": 2]
func merge(dictionaries: [[String: Int]]) -> [String: Int] {
    var mergedDictionary: [String: Int] = [:]
    dictionaries.forEach { dict in dictionaries
        mergedDictionary.merge(dict, uniquingKeysWith: { (val1, val2) -> Int in return val1 + val2 })
    }
    return mergedDictionary
}

let array1 = ["a": 1, "b": 2, "c": 3, "d": 4]
let array2 = ["z": 0, "c": -1, "a": 2]
let array3 = ["b": 9, "z": 2, "x": 4, "c": 10]
merge(dictionaries: [array1, array2, array3]) == ["a": 3, "b": 11, "c": 2, "d": 4, "x": 4, "z": 2]

// Implement intersection of multiple dictionaries
// The method returns a resulting dictionary
// Take the least value from the intersecting keys
// Example 1: Intersection of ["one": 1, "two": 2] and ["three": 3] results in [:] (empty dictionary)
// Example 2: Intersection of ["one": 1, "two": 2] and ["one": 3, "four": 4] results in ["one": 1]
func getCommonKeys(dictionaries: [[String: Int]]) -> Set<String> {
    var commonKeys = Set<String>()
    if dictionaries.count < 2 {
        return commonKeys
    }
    let dict1Keys = Set(dictionaries[0].keys)
    let dict2Keys = Set(dictionaries[1].keys)
    commonKeys = dict1Keys.intersection(dict2Keys)
    if dictionaries.count > 2 {
        for dict in dictionaries[2...dictionaries.count-1] {
            commonKeys = commonKeys.intersection(Set(dict.keys))
        }
    }
    return commonKeys
}

func intersect(dictionaries: [[String: Int]]) -> [String: Int] {
    //    for dict in dictionaries {
//        for key in intersectingKeys {
//            if !intersectionDict.keys.contains(key) {
//                intersectionDict[key] = dict[key]
//            } else if intersectionDict[key]! > dict[key]! {
//                intersectionDict[key] = dict[key]
//            }
//        }
//    }
//    return intersectionDict
    return [:]
}

intersect(dictionaries: [["a": 2]]) == [:]
intersect(dictionaries: [["a": 1], ["b": 1]]) == [:]
intersect(dictionaries: [array1, array3]) == ["b": 2, "c": 3]
intersect(dictionaries: [array1, array2, array3]) == ["c": -1]

// Palindrome is a string that reads the same backward as forward e.g. "radar"
// Implement filtering of just those keys that are palindromes
// The method returns a resulting dictionary
// Example1: ["one": 1, "radar": 2] results in ["radar": 2]
// Example2: ["wasitacaroracatisaw": 1, "two": 2] results in ["wasitacaroracatisaw": 1]
extension Dictionary where Key == String, Value == Int {
    func filterPalindromeKeys() -> [String: Value] {
        return self.filter { String($0.key.reversed()) == $0.key }
    }
}

let dictionary1 = ["wasitacaroracatisaw": 1, "two": 2, "thirty-three": 3, "33": 2, "radar": 19, "redrumsirismurder": 66]
dictionary1.filterPalindromeKeys() == ["wasitacaroracatisaw": 1, "33": 2, "radar": 19, "redrumsirismurder": 66]
