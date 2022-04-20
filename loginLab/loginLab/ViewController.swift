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
    @IBOutlet weak var userButton: UIButton!
    @IBOutlet weak var passButton: UIButton!
    @IBOutlet weak var userEntry: UITextField!
    @IBOutlet weak var passEntry: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }

        if sender == passButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == userButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = userEntry.text
        }
    }
    /*
    @IBAction func forgotPass(_ sender: Any) {
        performSegue(withIdentifier:"passButton", sender: nil)
    }
    @IBAction func forgotUser(_ sender: Any) {
        performSegue(withIdentifier:"userButton", sender: nil)
    }
*/


}

