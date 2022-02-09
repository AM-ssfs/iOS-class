//
//  Dice.swift
//  Dice_roller
//
//  Created by A M on 2/9/22.
//

import Foundation

struct Die{
    let numSides: Int
    var rolls = [Int]()
    

    func sumOfRolls() -> Int{
        var total = 0
        for roll in rolls {
            total += roll
        }
        return total
    }
    
    
    func avrgOfRolls() -> Double{
        let total = sumOfRolls()
        let avrg = Double(total / rolls.count)
        return avrg
    }
    
    
}
