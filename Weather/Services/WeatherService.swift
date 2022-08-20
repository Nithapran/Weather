//
//  WeatherService.swift
//  Weather
//
//  Created by Nithaparan Francis on 2022-08-18.
//

import Foundation
import Combine

protocol WeatherServiceProtocol{
    func getWeatherForLocationId(queryParams: [String: Any]) -> Future< Weather?, Error>
}

class WeatherService: APIClient, WeatherServiceProtocol {
    func getWeatherForLocationId(queryParams: [String: Any]) -> Future< Weather?, Error> {
        return Future { promise in
            let request = self.getBuilder().path(.getWeather).method(.get).urlQueryParameters(queryParams)
            RequestMiddleware.request(request: request){ (data: Weather?,error)  in
                if let error = error {
                    promise(.failure(error))
                } else {
                    promise(.success(data))
                }
                
            }
        }
        
        
    }
    
    
}



