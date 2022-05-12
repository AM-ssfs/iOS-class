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
    var modifier: Int
    
    init(title: String, diceGroup:[Die], placehodlername:Int){
        name = title
        dice = diceGroup
        modifier = placehodlername
    }
    func rollDice(){
        var total: Int = 0
        for x in dice{
            total += dice[x].rollDie()
        }
        total += modifier
    }
}
