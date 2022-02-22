//
//  ViewController.swift
//  Temperature Converter
//
//  Created by A M on 2/16/22.
//

import UIKit

class ViewController: UIViewController {
    var isFahrenheit = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
    }
    
    @IBOutlet weak var temp: UITextField?
    
    
    @IBAction func FarOrCel(_ sender: Any) {
        isFahrenheit.toggle()
    }
    
    @IBAction func ButtonPress(_ sender: Any) {
        if isFahrenheit{
            var abc = Double(temp)
            var thing = Tempature(tempInCelsius: abc).celToFar
        }
    }
    
}

