//
//  DiceSet.swift
//  FinalProject1
//
//  Created by Aden M on 5/12/22.
//

import Foundation
import UIKit

struct DiceSet {
    
    var name: NSMutableAttributedString
    var dice: [Die]
    
    init(title: String, diceGroup:[Die]){
        name = NSMutableAttributedString(string: "\(title): ", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        dice = diceGroup
        for x in diceGroup{
            name.append(NSAttributedString(string: x.name, attributes: [NSAttributedString.Key.foregroundColor: x.color]))
        }
    }
    
    func rollDice() -> [Any]{
        var result = [Any]()
        var rollSum = 0
        var rollColored = NSMutableAttributedString(string: "", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        for x in dice{
            let dieResult = x.rollDie()
            rollSum += dieResult[0] as! Int
            
            let dieColor = NSAttributedString(string: String(dieResult[0] as! Int), attributes: [NSAttributedString.Key.foregroundColor: x.color])
            rollColored.append(dieColor)
            rollColored.append(NSAttributedString(string: " + "))
        }
        result.append(rollSum)
        result.append(rollColored)
        return result
    }
}
