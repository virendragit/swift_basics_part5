/* This playground contains explanation and code for the below topics in Swift 5.1
  collection type ::: Array, Sets and Dictionary.
 */

import UIKit

//Arrays

//Array<Element>

// You can also write the type of an array in shorthand form as [Element]

// Creating and Empty Array

var someInts = [Int]()

print("someInts is of type [Int] with \(someInts.count) items")

someInts.append(3)

someInts = []

//Creating and array with a Default Value

var threeDoubles = Array(repeating: 0.0, count: 5)

//Creating an Array by adding Two Arrays Together

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)

var sixDoubles = threeDoubles + anotherThreeDoubles

// Creating an Array with an Array Literal

var shoppingList = ["Eggs", "Milk"]

//Accessing and Modifying an Array

print("The shopping list contains \(shoppingList.count) items.")

if shoppingList.isEmpty{
    print("The shopping list is empty.")
}else{
    print("The shopping list is not empty")
}

shoppingList.append("Flour")

shoppingList += ["Baking Powder"]

shoppingList += ["Chocolate Spread", "Cheese", "Butter"]


var firstItem = shoppingList[0]

shoppingList[0] = "Six Eggs"

print(shoppingList.count)

shoppingList[shoppingList.count - 1] = "Salt"

print(shoppingList.count)

print(shoppingList)

shoppingList[4...6] = ["Bananas", "Apples"]

print(shoppingList)

//Insert object at specific Index

shoppingList.insert("Syrup", at: 3)

print(shoppingList)

//Remove item at specific index.

shoppingList.remove(at: 2)

print(shoppingList)

print(shoppingList.count)

print(shoppingList.first!)
print(shoppingList.last!)

let apples = shoppingList.removeLast()

print(shoppingList)

//Iterating over an Array

for item in shoppingList{
    print(item)
}

for (index, value) in shoppingList.enumerated(){
    print("Item \(index + 1): \(value)")
}

//Sets

//A set stores distinct values of the same type in a collection with no defined ordering.

//you can use a set instead of an array when the order of item is not important, or when you need to ensure that an item only appears once.

// set<Element>

// Creating and Initialzing an Empty Set

var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items")

letters.insert("b")

letters = []

//Creating a Set with an Array Literal.

var favorite: Set<String> = ["Rock", "Classical", "HipHop"]

// A set type cannot be inferred from an array literal alone, so the type set must be explicitly decleared.

var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]

//var favoriteGenres: Set = Set<String>()
//empty set

//var results = [Int]()
//empty array


print("I have \(favoriteGenres.count) favorite music genres.")

if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}


favoriteGenres.insert("Jazz")
print(favoriteGenres)


//remove
if let removeGenere = favoriteGenres.remove("Rock"){
    print("\(removeGenere)? I'm over it.")
} else{
    print("Not yet over")
}

//check whether a set contains a particular item
if favoriteGenres.contains("funk") {
    print("hterr")
}
else{
    print("not ther")
}

favoriteGenres.insert("Rock")

//iterating over a set
for genre in favoriteGenres.sorted() {
    print("\(genre)")
}

//Fundamental set operations.

let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let sigleDigitPrimeNumbers : Set = [2,3,5,7]

//union
oddDigits.union(evenDigits).sorted()

//intersection
oddDigits.intersection(evenDigits).sorted()

oddDigits.subtracting(sigleDigitPrimeNumbers).sorted()

oddDigits.symmetricDifference(sigleDigitPrimeNumbers).sorted()

//set membership and equality
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isDisjoint(with: cityAnimals)


//Dictionary
//Dictionary<Key, Value>

//creating empty dictionary

var nameOfIntegers = [Int: String]()
nameOfIntegers[16] = "sixteen"
nameOfIntegers = [:]

var airports:[String: String] = ["YYZ": "Toronto", "DUB": "Dublin" ]
print("The airports dictionary contains \(airports.count) items.")

if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary is not empty.")
}

airports["LHR"] = "London"
print("The airports dictionary contains \(airports.count) items.")

airports["LHR"] = "London Heathrow"
print("The airports dictionary contains \(airports.count) items.")

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}

if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport is not in the airports dictionary.")
}


//airports["DUB"] = nil

if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary does not contain a value for DUB.")
}


for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
    print("Airport code::\(airportCode)")
}

for airportName in airports.values {
    print("Airport name::\(airportName)")
}

let airportCodes = [String](airports.keys)

let airportNames = [String](airports.values)


