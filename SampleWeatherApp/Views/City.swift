//
//  City.swift
//  SampleWeatherApp
//
//  Created by Sai Prasad Rekha on 01/01/25.
//

import SwiftUI

struct City: View {
    @ObservedObject var cityViewModel: CityViewModel
    
    var body: some View {
        VStack {
            CityName(city: cityViewModel.city, date: cityViewModel.date)
                .shadow(radius: 0)
            TodayWeather(cityViewModel: cityViewModel)
                .padding()
            HourlyWeather(cityViewModel: cityViewModel)
                .padding(.horizontal)
            DailyWeather(cityViewModel: cityViewModel)
                .padding(.horizontal)
        }.padding(.bottom, 30)
    }
}


#Preview {
    City(cityViewModel: CityViewModel())
}
