//
//  Die.swift
//  FinalProject1
//
//  Created by Aden M on 5/12/22.
//

import Foundation


struct Die {
    var sides: Int
    var name: String

    init(title: String, sideCount: Int) {
        name = title
        sides = sideCount
    }
    
    func rollDie() -> Int{
        let rollResult = Int.random(in: 1...self.sides)
        print("die: \(rollResult)")
        return rollResult
    }
}
