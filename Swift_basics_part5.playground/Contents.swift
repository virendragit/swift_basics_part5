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

