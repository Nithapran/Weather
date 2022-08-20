//
//  Double+Extension.swift
//  Weather
//
//  Created by Nithaparan Francis on 2022-08-19.
//

import Foundation

extension Double {
    func toString() -> String {
        return String(format: "%f", self)
    }
    
    func toString(roundedtoPlaces places:Int) -> String {
        return String(format: "%.\(places)f", self)
    }
}
