//
//  ContentView.swift
//  SampleWeatherApp
//
//  Created by Sai Prasad Rekha on 01/01/25.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var cityViewModel = CityViewModel()
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
                MenuHeader(cityViewModel: cityViewModel)
                    .padding(.horizontal, 10)
                ScrollView(showsIndicators: false) {
                    City(cityViewModel: cityViewModel)
                        .padding(.top, 10)
                }
            }.padding(.top, 45)
        }.background(
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6050806046, green: 0.8078469634, blue: 0.9820559621, alpha: 1)), Color(#colorLiteral(red: 0.4196078431, green: 0.5333333333, blue: 0.937254902, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
