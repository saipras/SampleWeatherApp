//
//  CityName.swift
//  SampleWeatherApp
//
//  Created by Sai Prasad Rekha on 01/01/25.
//

import SwiftUI

struct CityName: View {
    var city: String
    var date: String
    
    var body: some View {
        HStack {
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
                Text(city)
                    .font(.title)
                    .bold()
                Text(date)
            })
        }
    }
}


#Preview {
    CityName(city: "Bogotá", date: "12/12/1970")
}
