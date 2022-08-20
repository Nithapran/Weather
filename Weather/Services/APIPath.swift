//
//  APIPath.swift
//  Weather
//
//  Created by Nithaparan Francis on 2022-08-18.
//

import Foundation

public enum APIPath: Equatable {
    case getWeather
    case empty
    
    
    var toString: String {
        switch self {
        case .getWeather:
            return "weather"
        case .empty: return ""
        }
    }
}
