//
//  HomeViewModel.swift
//  Weather
//
//  Created by Nithaparan Francis on 2022-08-18.
//

import Foundation
import Combine

enum Cities: String {
    case toronto = "Toronto"
    case colombo = "Colombo"
    case newyork = "New York"
    case jaffna = "Jaffna"
    case moscow = "Moscow"
}

enum ApiCallStates {
    case inital
    case loading
    case error
    case success
}

class HomeViewModel: ObservableObject {
    let service: WeatherServiceProtocol
    
    @Published var weatherData: Weather?
    
    @Published var apiCallStates: ApiCallStates = .inital
    
    private var cancellables = Set<AnyCancellable>()
    
    init(service: WeatherServiceProtocol) {
        self.service = service
        self.getWeatherInformation()
    }
    
    func getWeatherInformation() {
        self.apiCallStates = .loading
        let request = service.getWeatherForLocationId(queryParams: ["q": Cities.toronto.rawValue, "units": "metric"])
        
        request
            .receive(on: RunLoop.main)
            .sink { error in
                switch error {
                case .failure(let err):
                    self.apiCallStates = .error
                    break
                default: break
                }
                
            } receiveValue: { result in
                self.apiCallStates = .success
                self.weatherData = result
            }.store(in: &self.cancellables)
    }
}
