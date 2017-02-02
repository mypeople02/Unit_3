//
//  ViewController.swift
//  Fibonacci App
//
//  Created by Ammi Tan on 1/14/17.
//  Copyright © 2017 Ammi Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateFibonacciSequence()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: 2, includesZero: true)
    
    @IBOutlet var textView: UITextView!
    @IBOutlet var FibSequenceThree: UILabel!
    @IBOutlet var includesZeroSwitch: UISwitch!
    @IBOutlet var includesZeroLabel: UILabel!
    @IBOutlet var numberOfItemsLabel: UILabel!
    @IBOutlet var numberOfItemsSlider: UISlider!

    
    @IBAction func updateFibonacciSequence () {
        
        //create variable for the switch
        if (includesZeroSwitch.isOn == true) {
            includesZeroLabel.text = "Yes"
        }
        else {
            includesZeroLabel.text = "No"
        }
        
        //input the values
        let sequenceOne = FibonacciSequence(numberOfItemsInSequence: UInt(numberOfItemsSlider.value), includesZero: includesZeroSwitch.isOn)
        
        sequenceOne.addNumbers2() //runs the calculation
        
        textView.text = sequenceOne.values.description
        
        numberOfItemsLabel.text = String(UInt(numberOfItemsSlider.value))
        

        
//        includesZeroLabel.text = includesZeroSwitch.isOn ? "Yes" : "No"

    }
    
    
}

