//
//  Die.swift
//  FinalProject1
//
//  Created by Aden M on 5/12/22.
//

import Foundation
import SwiftUI


//var numberResult = 0
//var textResult = NSAttributedString(string: "", attributes: [NSAttributedString.Key.foregroundColor: Color.black])


struct Die {
    var sides: Int
    var name: String
    var color: UIColor

    init(title: String, sideCount: Int, colors: UIColor) {
        name = title
        sides = sideCount
        color = colors
    }
    
    func rollDie() -> [Any]{
        
        var result = [Any]()
        let numberResult = Int.random(in: 1...self.sides)
        let textResult = NSAttributedString(string: String(numberResult), attributes: [NSAttributedString.Key.foregroundColor: color])
        result.append(numberResult)
        result.append(textResult)
        return result
    }

    
    

}
