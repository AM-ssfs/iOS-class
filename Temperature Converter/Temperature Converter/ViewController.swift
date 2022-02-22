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
    
    @IBOutlet weak var textEntry: UITextField!
    
    @IBOutlet weak var farCelOutlet: UISwitch!
    
    @IBAction func farCelSwitch(_ sender: Any) {
        isFahrenheit.toggle()
        farCelOutlet.setOn(isFahrenheit, animated: true)
        print(isFahrenheit)
    }
    
    @IBAction func ButtonPress(_ sender: Any) {
        if isFahrenheit{
            isFahrenheit = false
            farCelOutlet.setOn(isFahrenheit, animated: true)
            var textAsDouble = Double(textEntry.text!)
            textAsDouble = ( (textAsDouble! - 32) * 5/9 )
            textAsDouble = String(textAsDouble)
            textEntry.text = String(textAsDouble!)
        }
        else{
            isFahrenheit = true
            farCelOutlet.setOn(isFahrenheit, animated: true)
            var textAsDouble = Double(textEntry.text!)
            textAsDouble = ( (textAsDouble! * 5/9 ) + 32 )
            textEntry.text = String(textAsDouble!)
        }
    }
}

