//
//  Section.swift
//  FinalProject1
//
//  Created by Aden M on 5/13/22.
//

import Foundation

struct Sections {
    var header: String
    var cells: [Cells]
    
    init(title: String, cell: [Cells]){
        header = title
        cells = cell
    }
}
