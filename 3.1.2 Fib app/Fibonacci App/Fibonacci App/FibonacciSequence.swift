// Thinkful Playground
// Thinkful.com

// Fibonacci Sequence

// By definition, the first two numbers in the Fibonacci sequence are 1 and 1, or 0 and 1, depending on the chosen starting point of the sequence, and each subsequent number is the sum of the previous two.
//This is me experimenting with github. 
import UIKit

class FibonacciSequence {
    
    var includesZero: Bool
    var maxNumber: UInt?
    var numberOfItemsInSequence: UInt?
    
    init(maxNumber: UInt, includesZero: Bool) {
        self.maxNumber = maxNumber
        self.includesZero = includesZero
    }
    
    var values: [UInt] = []
    var sumPreceding: UInt = 0
    var summation: UInt = 0
    var sequenceNumber = 0
    var nextToLastNumber = 0
    
    func addNumbers() {
        if (includesZero == true) {
            values = [0]
            values += [1]
        }
        else {
            values = [1]
            values += [1]
        }
        sequenceNumber = values.count - 1
        nextToLastNumber = sequenceNumber - 1
        summation = values.reduce(0,+)
        sumPreceding = values[sequenceNumber] + values[nextToLastNumber]
        
        while(sumPreceding <= maxNumber!) {
            values += [sumPreceding]
            sequenceNumber = values.count - 1
            nextToLastNumber = sequenceNumber - 1
            summation = values.reduce(0,+)
            sumPreceding = values[sequenceNumber] + values[nextToLastNumber]
        }
    }
    
    init(numberOfItemsInSequence: UInt, includesZero: Bool) {
        self.numberOfItemsInSequence = numberOfItemsInSequence
        self.includesZero = includesZero
    }
    
    func addNumbers2() {
        
        if (includesZero == true) {
            values = [0]
            values += [1]
        }
        else {
            values = [1]
            values += [1]
        }
        
        if (numberOfItemsInSequence! >= 3) {
            for _ in 3...numberOfItemsInSequence! {
                sequenceNumber = values.count - 1
                nextToLastNumber = sequenceNumber - 1
                let (sumPreceding2, boolOverflow) = UInt.addWithOverflow(values[sequenceNumber], values[nextToLastNumber])
                print(boolOverflow)
                if boolOverflow == true {
                    print("Overflow.  Please pick a lower numberOfItemsInSequence")
                    break
                }
                else {
                    values += [sumPreceding2]
                    let (_, boolOverflow2) = UInt.addWithOverflow(self.summation, sumPreceding2)
                    if boolOverflow2 == true {
                        print("Overflow.  Please pick a lower numberOfItemsInSequence")
                        break
                    }
                }
            }
        }
        else if (numberOfItemsInSequence! == 1) {
            values.remove(at: 1)
            summation = values.reduce(0,+)
        }
        else if (numberOfItemsInSequence! == 2) {
            summation = values.reduce(0,+)
        }
        else {
            print("The number of items is zero or negative.")
            values = []
            summation = 0
        }
    }
    
    func printThis() {
        print(values)
        print(summation)
    }
}

var fibonacciSequence = FibonacciSequence(maxNumber:5, includesZero: true)

let anotherSequence = FibonacciSequence(numberOfItemsInSequence: 100, includesZero: true)
