//: Playground - noun: a place where people can play

import UIKit

//Question 1

func cityLocation(location: String) -> String {
    let city = "I live in " + location
    let number = Int(location)
    return city
}

print(cityLocation("Seattle"))



//Question 2

let tuple: (color: String, number: Int, siblings: Bool) = ("Blue", 10, true)
let message = "My favorite color is \(tuple.color)"

//string interpolation to turn it into one string


//Question 3

func printAndCount(stringToPrint: String) -> Int{
    print(stringToPrint)
    return stringToPrint.characters.count
}

printAndCount("I like Apples")


//Question 4

var fruit = "Oranges"
var reverseFruit = ""

for character in fruit.characters {
    
    //had to use type conversion to turn character (which is not a string) into a string
    
    reverseFruit = String(character) + reverseFruit
}

print(reverseFruit)



