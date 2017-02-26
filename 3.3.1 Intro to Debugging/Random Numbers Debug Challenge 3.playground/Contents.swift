//: Playground - noun: a place where people can play

import UIKit

var resultsArray = [String]()
var userGuesses = [Int]()

func getRandomNumber() -> Int {
    let randomNumber = Int(arc4random_uniform(10)) + 1
    return randomNumber
}

func createUserGuessArray() -> [Int] {
    for _ in 0...2 {
        let randomNumber = getRandomNumber()
        userGuesses += [randomNumber]
    }
    return userGuesses
}

func playGame() {
    let randomNumber2 = getRandomNumber()
    userGuesses = createUserGuessArray()
    
    var result: String = ""
        userGuesses[0]
        userGuesses[1]
        userGuesses[2]
    for index in 0...2 { //create results Array

        
        if (randomNumber2 == userGuesses[index]) {
            result = "You win"
       } else {
            result = "You lose"
        }
        resultsArray += [result]
    }
}

playGame()
    
resultsArray
