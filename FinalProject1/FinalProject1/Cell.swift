//
//  Cell.swift
//  FinalProject1
//
//  Created by Aden M on 5/13/22.
//

import Foundation
import UIKit

struct Cells {
    var name: String  //NSMutableAttributedString
    var dice: DiceSet
    
    init(title: String, diceSet: DiceSet){
        name = title  //NSMutableAttributedString(string: "\(title): ", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        dice = diceSet
    }
    
    
    
    
    func getClicked() -> Any{
        // return my name, my dice set, and the result of the roll formated ready to send to detailed roll display
        return "e"
    }
}
