//
//  API+Extensions.swift
//  SampleWeatherApp
//
//  Created by Sai Prasad Rekha on 01/01/25.
//

import Foundation

extension Api {
    
    static let baseUrl = "https://api.openweathermap.org/data/3.0/"
    
    static func getUrlFor(lat: Double, lon: Double) -> String {
        return "\(baseUrl)onecall?lat=\(lat)&lon=\(lon)&excluded=minutely&appid=\(key)&units=metric"
    }
}
