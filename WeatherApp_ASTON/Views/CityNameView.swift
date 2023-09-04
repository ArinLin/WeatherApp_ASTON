//
//  CityNameView.swift
//  WeatherApp_ASTON
//
//  Created by Arina on 04.09.2023.
//

import SwiftUI

struct CityNameView: View {
    var city: String
    var date: String
    
    var body: some View {
        HStack {
            VStack(alignment: .center, spacing: 10) {
                Text(city)
                    .font(.title)
                    .bold()
                Text(date)
            }.foregroundColor(.white)
        }
    }
}

struct CityNameView_Previews: PreviewProvider {
    static var previews: some View {
        CityNameView(city: "Moscow", date: "1 september")
    }
}
