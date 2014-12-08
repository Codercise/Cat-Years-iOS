//
//  ViewController.swift
//  CiOS Ex1
//
//  Created by Nick Hayden on 30/11/2014.
//  Copyright (c) 2014 Nick Hayden. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var humanYears: UITextField!
    @IBOutlet weak var catYearsLabel: UILabel!

    @IBAction func goButtonPressed(sender: AnyObject) {
        if (humanYears.text.toInt() != nil) {
            var catYears = humanYears.text.toInt()! * 7
            //println(catYears)
            catYearsLabel.text = String(catYears)+" cat years"
        } else if (humanYears.text.toInt() <= 0) {
            catYearsLabel.text = "please enter a positive integer"
        } else { catYearsLabel.text = "error" }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        println("Hello, world")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}