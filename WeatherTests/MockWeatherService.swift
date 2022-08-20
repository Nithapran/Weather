//
//  MockWeatherService.swift
//  WeatherTests
//
//  Created by Nithaparan Francis on 2022-08-19.
//

import Foundation
import Combine
@testable import Weather

class MockWeatherService: APIClient, WeatherServiceProtocol, Mockable {
    func getWeatherForLocationId(queryParams: [String : Any]) -> Future<Weather?, Error> {
        return Future { promise in
            let data = self.loadJSON(filename: "MockWeather", type: Weather.self)
            promise(.success(data))
        }
    }
    
}
