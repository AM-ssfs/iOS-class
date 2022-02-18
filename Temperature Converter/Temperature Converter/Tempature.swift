//
//  Tempature.swift
//  Temperature Converter
//
//  Created by A M on 2/16/22.
//

import Foundation
struct Tempature{
    var tempInFahrenheit: Double
    var tempInCelsius: Double
    var celToFar : Double {
        return (tempInCelsius*1.8)+32
    }
    var farToCel : Double {
        return (tempInFahrenheit-32)*(5/9.0)
    }
}


