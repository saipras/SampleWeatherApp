//
//  MenuHeader.swift
//  SampleWeatherApp
//
//  Created by Sai Prasad Rekha on 01/01/25.
//

import SwiftUI

struct MenuHeader: View {
    
    @ObservedObject var cityViewModel: CityViewModel
    
    @State private var searchTerm = "Bogotá"
    
    var body: some View {
        HStack {
            TextField("", text: $searchTerm)
                .padding(.horizontal, 20)
                .padding(.vertical, 5)
            
            Button {
                cityViewModel.city = searchTerm
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                    
                    Image(systemName: "location.fill")
                }
            }
            .frame(width: 50, height: 50)
        }
        .foregroundColor(.white)
        .padding()
        .background(ZStack(alignment: .leading) {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.white)
                .padding(.leading, 10)
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue.opacity(0.5))
        })
    }
}
#Preview {
    MenuHeader(cityViewModel: CityViewModel())
}
