//
//  Die.swift
//  FinalProject1
//
//  Created by Aden M on 5/12/22.
//

import Foundation
import SwiftUI


struct Die {
    var sides: Int
    var name: String
    var color: UIColor

    init(title: String, sideCount: Int, colors: UIColor) {
        name = title
        sides = sideCount
        color = colors
    }
    
    func rollDie() -> [Int, NSAttributedString]{
        
        let rollResult = Int.random(in: 1...self.sides)
        let rollText = NSAttributedString(string: String(rollResult), attributes: [NSAttributedString.Key.foregroundColor: color])
        
        return [rollResult, rollText]
    }
    

}
