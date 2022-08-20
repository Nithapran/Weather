//
//  HomeView.swift
//  Weather
//
//  Created by Nithaparan Francis on 2022-08-18.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viwModel = HomeViewModel(service: WeatherService())
    
    var body: some View {
        NavigationView {
            VStack {
                WeatherView(weather: $viwModel.weatherData)
                HStack {
                    StatusView(state: $viwModel.apiCallStates)
                    Button(action: {
                        viwModel.getWeatherInformation()
                    
                    }) {
                        Text("Refresh")
                            .padding(5)
                            .overlay( RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.blue, lineWidth: 1))
                            .cornerRadius(5)
                    }
                }
                
                Spacer()
            }
            
            .navigationBarTitle(viwModel.weatherData?.name ?? "")
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
