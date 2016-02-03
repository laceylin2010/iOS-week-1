//Day 2 homework

import UIKit

//Question 1: Write a function that takes in an array of strings, checks if array contains "Earth", if not adds it otherwise return

var planets = ["Mercury", "Venus", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]

func ourPlanets(array: [String]) -> [String]
{
    if array.contains("Earth"){
        return array
    } else {
        var includedEarth = array
        includedEarth.append("Earth")
        return includedEarth
    }
}

ourPlanets(planets)

//this function below depends on the var planets whereas the live function does not. It creates an array in its own scope to append Earth too.

//func ourPlanets() {
//    if !planets.contains("Earth") {
//        planets.append("Earth")
//    }
//}
//
//ourPlanets()




//Question 2: Use reduce to create single string from the above array ["Venus", "Earth"] would produce "Venus, Earth"]


let planetString = planets.reduce(""){"\($0) \($1)"}


//you can assign names and pass them as parameters to reduce


//Question 3: Declare and implement a dictionary that can contain as values as strings, Int, etc

var dictionary = [String: String]()

dictionary["phone"] = "Iphone"
dictionary["phoneColor"] = "White"

let phone = dictionary["phone"]
let phoneColor = dictionary["phoneColor"]


//Question 4: Declare a dictionary of string values. Declare a function that takes in a string and searches dictionary for it. Use filter

//searching a dictionary for a value


var dictionaryOne = ["Iphone": "black", "Galaxy": "white"]



func searchDictionary(searchTerm: String, dictionary: [String: String]) -> Bool { //creating a function and taking in two parameters and going to return a bool. Anything in paranthese is what need to make function work. -> return is what the result will be.
    
    let values = dictionary.values
    return values.contains(searchTerm)//using contain method on values which returns a boolean
}


searchDictionary("white", dictionary: dictionaryOne)


//Question 5: Write examples for union, intersect, subtract, exclusive or set operations

let set: Set = [2, 4, 6, 8]
let union = set.union([2, 4, 6, 8, 10])
let intersect = set.intersect([2, 4, 6, 8, 10, 12])
let subtract = set.subtract([2, 4, 8, 10,])
let exclusive = set.exclusiveOr([5, 2, 6, 8])




























