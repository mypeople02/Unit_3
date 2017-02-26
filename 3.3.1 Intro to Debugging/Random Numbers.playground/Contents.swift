//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var randomNumber:Int = 1
var userGuess:Int = 1

func randomize(from: Int, to: Int) -> Int {
    let range = UInt32(to - from)
    randomNumber = Int(arc4random_uniform(range+1)) + from
    return randomNumber
}

for index in 1...100 {
    randomize(from:1,to:10)
}

func playGame() {
    srand48(Int(time(nil)))
    let computerNumber = randomize(from:1,to:10)
    
    srand48(Int(time(nil))*10)
    userGuess = randomize(from:1,to:10)
    
    var result:String
    if(computerNumber == userGuess) {
        result = "You win"
    }
        else {
            result = "You lose"
        }
    print(result)
}

playGame()