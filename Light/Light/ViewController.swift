//
//  ViewController.swift
//  Light
//
//  Created by A M on 2/2/22.
//

import UIKit

class ViewController: UIViewController {

    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        if lightOn{
            self.title = "turn on?"
            view.backgroundColor = .white
        }
        else{
            self.title = "turn off?"
            view.backgroundColor = .black
        }
    }
    
}

