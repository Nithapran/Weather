//
//  WeatherModel.swift
//  Weather
//
//  Created by Nithaparan Francis on 2022-08-18.
//

import Foundation

struct Weather: Codable {
    var coord: WeatherCoodinate
    var weather: [WeatherSummary]
    var base: String
    var main: WeatherMain
    var visibility: Int
    var wind: WeatherWind
    var name: String
}

struct WeatherCoodinate: Codable {
    var lon: Double
    var lat: Double
}

struct WeatherSummary: Codable {
    var id: Int
    var main: String
    var description: String
    var icon: String
    
    func getIconImageUrl() -> URL? {
        return URL(string: "https://openweathermap.org/img/wn/\(self.icon)@2x.png")
    }
}

struct WeatherMain: Codable {
    var temp: Double?
    var feels_like: Double?
    var temp_min: Double?
    var temp_max: Double?
    var pressure: Double?
    var humidity: Double?
    var sea_level: Double?
    var grnd_level: Double?
}

struct WeatherWind: Codable {
    var speed: Double
    var deg: Double
    var gust: Double?
}
