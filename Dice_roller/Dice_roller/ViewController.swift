//
//  ViewController.swift
//  Dice_roller
//
//  Created by A M on 2/3/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    fileprivate func updateUI(){
        
    }
    
    @IBOutlet weak var labelD4: UILabel!
    @IBOutlet weak var labelD6: UILabel!
    @IBOutlet weak var labelD8: UILabel!
    @IBOutlet weak var labelD10: UILabel!
    @IBOutlet weak var labelD12: UILabel!
    @IBOutlet weak var labelD20: UILabel!
    @IBOutlet weak var labelD100: UILabel!

    @IBOutlet weak var sliderD4_1: UISlider!
    @IBOutlet weak var sliderD6_1: UISlider!
    @IBOutlet weak var sliderD8_1: UISlider!
    @IBOutlet weak var sliderD10_1: UISlider!
    @IBOutlet weak var sliderD12_1: UISlider!
    @IBOutlet weak var sliderD20_1: UISlider!
    @IBOutlet weak var sliderD100_1: UISlider!

    
    @IBAction func sliderD4_2(_ sender: UISlider) {
        labelD4.text = String(Int(sliderD4_1.value))
        updateUI()
    }
    
}

