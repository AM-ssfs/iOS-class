//
//  Cell.swift
//  FinalProject1
//
//  Created by Aden M on 5/13/22.
//

import Foundation

struct Cell {
    var name: String
    var dice: DiceSet
    
    init(title: String, abc: DiceSet){
        name = title
        dice = abc
    }
    
    func getClicked() -> Any{
        // return my name, my dice set, and the result of the roll formated ready to send to detailed roll display
        return "e"
    }
}
