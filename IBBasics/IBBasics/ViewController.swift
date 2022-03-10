//
//  ViewController.swift
//  IBBasics
//
//  Created by Aden M on 3/10/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var myButton: UIButton!
    @IBOutlet var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myButton.tintColor = .red

        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressed(_ sender: Any) {
        print("The button was pressed")
        myLabel.text="The button was pressed"
        myLabel.textColor = .orange
    }
}

