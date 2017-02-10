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
        
        

        colorSquare.layer.borderColor = UIColor.black.cgColor
        colorSquare.layer.borderWidth = 1
        let defaults = UserDefaults.standard
        redOutlet.value = defaults.float(forKey: "red")
        greenOutlet.value = defaults.float(forKey: "green")
        blueOutlet.value = defaults.float(forKey: "blue")
        slider()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "openColor") {
            let newViewController = segue.destination
            newViewController.view.backgroundColor = colorSquare.backgroundColor
            
        }

    }
    

    
    @IBAction func slider() {
        colorSquare.backgroundColor = UIColor(colorLiteralRed: redOutlet.value, green: greenOutlet.value, blue: blueOutlet.value, alpha: 1)
        
        let defaults = UserDefaults.standard
        defaults.set(redOutlet.value, forKey: "red")
        defaults.set(greenOutlet.value, forKey: "green")
        defaults.set(blueOutlet.value, forKey: "blue")
        defaults.synchronize()
    }
    


}

