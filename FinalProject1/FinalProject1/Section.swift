//
//  Section.swift
//  FinalProject1
//
//  Created by Aden M on 5/13/22.
//

import Foundation

struct Section {
    var name: String
    var cells: [Cell]
    
    init(title: String){
        name = title
        cells = []
    }
}
