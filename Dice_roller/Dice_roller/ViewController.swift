//
//  ViewController.swift
//  Dice_roller
//
//  Created by A M on 2/3/22.
//

import UIKit


class ViewController: UIViewController {
    
    var resultMainArray = [Die]()  // access this anywhere
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    fileprivate func updateUI(){
    }
    
    //gives an array of integer numbers for amount of dice rolled
    fileprivate func listLabels() -> Array<Any>{
        
        let labelList = [labelD4, labelD6, labelD8, labelD10, labelD12, labelD20, labelD100]
        
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
    
    @IBAction func pressRoll(_ sender: UIButton){
        
        resultMainArray.removeAll()
        
        let D4 = Die(numSides: 4)
        let D6 = Die(numSides: 6)
        let D8 = Die(numSides: 8)
        let D10 = Die(numSides: 10)
        let D12 = Die(numSides: 12)
        let D20 = Die(numSides: 20)
        let D100 = Die(numSides: 100)
        var diceStruct = [D4, D6, D8, D10, D12, D20, D100]
        
         var counter = 0
         let labelList = listLabels() // this has the number of times to roll for each type
         let diceTypes = [4, 6, 8, 10, 12, 20, 100]
         // resultMainArry moved from here to top
         for _ in labelList{
             
             
             //this runs once for each type of  die
             var resultSubArray = [Int]()
             
             print("")
             print(labelList[counter])  // numbrer of dice to roll
             print(diceTypes[counter])  // type of die to roll
             //print("")
             
             if (labelList[counter] as! Int) > 0{
                    
                 for _ in 1...(labelList[counter] as! Int){
                     let tempNumber = Int.random(in: 1...diceTypes[counter])
                     resultSubArray.append(tempNumber)
                     // print(tempNumber)
                 }
                 
             }
             diceStruct[counter].rolls = resultSubArray // sets dice roll result to the rolls
             resultMainArray.append(diceStruct[counter])
             print(resultMainArray[counter])
             counter+=1
         }
        view.layoutSubviews()
        // new view over everything with results. still keep 'roll' and 'clear' visible maybe 'roll' becomes 'roll again' and 'clear' shows the sliders again
        
    }
    

    
    
    
    @IBAction func pressClear(_ sender: Any) {
        resultMainArray.removeAll()
    }
    
    

}

