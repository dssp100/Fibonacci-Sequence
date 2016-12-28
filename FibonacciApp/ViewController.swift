//
//  ViewController.swift
//  FibonacciApp
//
//  Created by Daniel Springer on 25/12/2016.
//  Copyright © 2016 Daniel Springer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var includeZeroSwitch: UISwitch!
    @IBOutlet weak var includesZeroLabel: UILabel!
    @IBOutlet weak var numberOfItemsSlider: UISlider!
    @IBOutlet weak var numberOfItemsLabel: UILabel!
    
    var fibonacciSequnce = FibonacciSequence(numberOfItemsInSequence: 2, includesZero: true)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateFibonacciSequence()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func updateFibonacciSequence() {
       
        if includeZeroSwitch.isOn {
            numberOfItemsSlider.maximumValue = 93
            
        } else {
            numberOfItemsSlider.maximumValue = 92
        }
        
        fibonacciSequnce = FibonacciSequence(numberOfItemsInSequence: Int(UInt(numberOfItemsSlider.value)), includesZero: includeZeroSwitch.isOn)
       textView.text = fibonacciSequnce.values.description
        
        if includeZeroSwitch.isOn {
            includesZeroLabel.text = "Yes"
        } else {
            includesZeroLabel.text = "No"
        }
        
        numberOfItemsLabel.text = String(Int(numberOfItemsSlider.value))
        
       
    }

}

