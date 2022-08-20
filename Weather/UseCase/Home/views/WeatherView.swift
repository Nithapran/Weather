//
//  WeatherView.swift
//  Weather
//
//  Created by Nithaparan Francis on 2022-08-19.
//

import SwiftUI

struct WeatherView: View {
    @Binding var weather: Weather?
    var body: some View {
        VStack (spacing: 0) {
            HStack {
                Spacer()
                AsyncImage(url: self.weather?.weather.first?.getIconImageUrl()) {
                    image in
                    image.image?
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        
                        .frame(width: 70, height: 70)
                }
                    
                    
                    
                Text("\(weather?.main.temp?.toString(roundedtoPlaces: 1) ?? "")°" )
                    .font(Font.system(size: 35)).fontWeight(.medium).foregroundColor(Color.black)
                Spacer()
            }
            Text(weather?.weather.first?.main ?? "")
                .padding(.bottom, 5.0)
            Text("L:\(weather?.main.temp_min?.toString(roundedtoPlaces: 0) ?? "")° H:\(weather?.main.temp_max?.toString(roundedtoPlaces: 0) ?? "")°")
        }
        
        
    }
}

