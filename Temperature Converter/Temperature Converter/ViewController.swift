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
    @IBOutlet weak var ConvertText: UIButton!
    
    @IBOutlet weak var textEntry: UITextField!
    
    @IBOutlet weak var farCelOutlet: UISwitch!

    
    @IBAction func farCelSwitch(_ sender: Any) {
        isFahrenheit.toggle()
        farCelOutlet.setOn(isFahrenheit, animated: true)
        //print(isFahrenheit)
        convertButtonText()
        
    }
    
    
    func convertButtonText () {
        if isFahrenheit == true{
            ConvertText.setTitle("Convert to celcius", for: .normal)
        }
        else{
            ConvertText.setTitle("Convert to fahrenheit", for: .normal)
        }
    }

    
    @IBAction func ButtonPress(_ sender: Any) {
        if isFahrenheit{
            isFahrenheit = false
            farCelOutlet.setOn(isFahrenheit, animated: true)
            var textAsDouble = Double(textEntry.text!)
            textAsDouble = ( (textAsDouble! - 32) * (5/9) )
            textAsDouble = Double(Int(textAsDouble!*100))/100
            textEntry.text = String(textAsDouble!)
            convertButtonText()
            //ConvertText.setTitle("Convert to celcius", for: .normal)
        }
        else{
            isFahrenheit = true
            farCelOutlet.setOn(isFahrenheit, animated: true)
            var textAsDouble = Double(textEntry.text!)
            textAsDouble = ( (textAsDouble! * (9/5) ) + 32 )
            textAsDouble = Double(Int(textAsDouble!*100))/100
            textEntry.text = String(textAsDouble!)
            convertButtonText()
            //ConvertText.setTitle("Convert to fahrenheit", for: .normal)
        }
    }
}

