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
    
    
    func rollDice() -> Array<Any>{
        let placehold = [1,2,3,4]
        return placehold
    }
    
    
    func sumOfRolls() -> Int{
        var total = 0
        for roll in rolls {
            total += roll
        }
        return total
    }
    
    
    
}
