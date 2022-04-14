//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Aden M on 4/14/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segueSwitch: UISwitch!

    @IBAction func yellowButtonPushed(_ sender: Any) {
        performSegue(withIdentifier: "yellow", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

