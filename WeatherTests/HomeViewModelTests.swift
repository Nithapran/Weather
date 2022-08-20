//
//  HomeViewModelTests.swift
//  WeatherTests
//
//  Created by Nithaparan Francis on 2022-08-19.
//

import Foundation
import XCTest
import Combine
@testable import Weather

class HomeViewModelTests: XCTestCase {
    var homeViewModel: HomeViewModel!
    
    private var cancellables: Set<AnyCancellable>!
    
    override func setUp() {
        super.setUp()
        homeViewModel = HomeViewModel(service: MockWeatherService())
        cancellables = []
    }
    
    override func tearDown() {
        super.tearDown()
        homeViewModel = nil
    }
    
    func testGetWeatherInformation() {
        homeViewModel.getWeatherInformation()
        
        
        
        homeViewModel
            .$weatherData
            .dropFirst()
            .sink { value in
                XCTAssertEqual(value?.weather.first?.id, 804)
            }
            .store(in: &cancellables)
        
    }
}
