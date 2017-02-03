//
//  ViewController.swift
//  RGB_slider
//
//  Created by Ammi Tan on 2/1/17.
//  Copyright © 2017 Ammi Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



    
    @IBOutlet weak var redOutlet: UISlider!
    @IBOutlet weak var greenOutlet: UISlider!
    @IBOutlet weak var blueOutlet: UISlider!
    @IBOutlet weak var colorSquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        slider()
        colorSquare.layer.borderColor = UIColor.black.cgColor
        colorSquare.layer.borderWidth = 1
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func slider() {
        colorSquare.backgroundColor = UIColor(colorLiteralRed: redOutlet.value, green: greenOutlet.value, blue: blueOutlet.value, alpha: 1)
    }
    
    

}

