//
//  ViewController.swift
//  loginLab
//
//  Created by Aden M on 4/15/22.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    @IBAction func forgotPass(_ sender: Any) {
        performSegue(withIdentifier: "pass", sender: nil)
    }
    @IBAction func forgotUser(_ sender: Any) {
        performSegue(withIdentifier: "user", sender: nil)
    }

}

