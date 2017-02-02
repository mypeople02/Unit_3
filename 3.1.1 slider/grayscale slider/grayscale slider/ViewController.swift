//
//  ViewController.swift
//  grayscale slider
//
//  Created by Ammi Tan on 1/13/17.
//  Copyright © 2017 Ammi Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func writeThis () {
        print("Yup!  It works!")
        view.backgroundColor = UIColor.purple
    }
    
    @IBAction func slideChangeColor(_ sender: UISlider) {
        print(sender.value)
        view.backgroundColor = UIColor.init(white: CGFloat(sender.value), alpha: 1)
    }

    

}

