//
//  DiceSet.swift
//  FinalProject1
//
//  Created by Aden M on 5/12/22.
//

import Foundation

struct DiceSet {
    
    var name: String
    var dice: [Die]
    
    init(title: String, diceGroup:[Die]){
        name = title
        dice = diceGroup
    }
    
    func rollDice() -> Int{
        var total = 0
        for x in Range(0...dice.count-1){
            total += dice[x].rollDie()
        }
        // modify
        return total
    }
}
