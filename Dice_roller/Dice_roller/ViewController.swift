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
    
    //gives an array of integer numbers for amount of dice rolled
    fileprivate func listLabels() -> Array<Any>{
        
        var labelList = [labelD4, labelD6, labelD8, labelD10, labelD12, labelD20, labelD100]
        
        var labelArray = [Int]()
        
        for labels in labelList {
            labelArray.append(Int(labels!.text!)!)
        }
        
        return labelArray
        
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
    @IBAction func sliderD6_2(_ sender: UISlider) {
        labelD6.text = String(Int(sliderD6_1.value))
        updateUI()
    }
    @IBAction func sliderD8_2(_ sender: UISlider) {
        labelD8.text = String(Int(sliderD8_1.value))
        updateUI()
    }
    @IBAction func sliderD10_2(_ sender: UISlider) {
        labelD10.text = String(Int(sliderD10_1.value))
        updateUI()
    }
    @IBAction func sliderD12_2(_ sender: UISlider) {
        labelD12.text = String(Int(sliderD12_1.value))
        updateUI()
    }
    @IBAction func sliderD20_2(_ sender: UISlider) {
        labelD20.text = String(Int(sliderD20_1.value))
        updateUI()
    }
    @IBAction func sliderD100_2(_ sender: UISlider) {
        labelD100.text = String(Int(sliderD100_1.value))
        updateUI()
    }
    
    
     @IBAction func pressRoll(_ sender: UIButton) {
         let labelList = listLabels()
         print(labelList[1])
         print(labelList[6])

    }
    
   /*
    func rollDice(diceList) {
        var something = 0
        while(something <= 10){
            print(String(something))
            something+=1
        }
    } */
    
    
    

}

