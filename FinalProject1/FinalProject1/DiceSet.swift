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
    var modifier: Int
    
    init(title: String, diceGroup:[Die], modify:Int){
        name = NSMutableAttributedString(string: "\(title): ", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        dice = diceGroup
        modifier = modify
        
        for x in diceGroup{
            name.append(NSAttributedString(string: x.name, attributes: [NSAttributedString.Key.foregroundColor: x.color]))
            name.append(NSAttributedString(string: "+"))
        }
        name.append(NSAttributedString(string: String(modify)))

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
            rollColored.append(NSAttributedString(string: "+"))
        }
        if modifier != 0{
            rollSum += modifier
            rollColored.append(NSAttributedString(string: String(modifier)))
        }
        else{
            //https://localcoder.org/nsmutableattributedstring-how-to-delete-last-character-programmatically-on-ios
            rollColored.deleteCharacters(in: NSRange(location: rollColored.length-1, length: 1))
        }
        result.append(NSMutableAttributedString(string: String(rollSum)))
        result.append(rollColored)
        return result
    }
}


