//
//  Die.swift
//  FinalProject1
//
//  Created by Aden M on 5/12/22.
//

import Foundation


struct Die {
    var sides: Int
    
    init(sideCount: Int) {
        sides = sideCount //"sideCount" so no variable shadowing
    }
    func rollDie()->Int{
        return Int.random(in: 0...self.sides)+1
    }
}
