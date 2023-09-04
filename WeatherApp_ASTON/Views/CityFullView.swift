//
//  CityFullView.swift
//  WeatherApp_ASTON
//
//  Created by Arina on 04.09.2023.
//

import SwiftUI

struct CityFullView: View {
    
    @ObservedObject var cityVM: CityVM
    
    var body: some View {
        VStack {
            Spacer()
            CityNameView(city: cityVM.city, date: cityVM.date)
                .shadow(radius: 0)
            TodayWeatherView(cityVM: cityVM)
                .padding ()
            HourlyWeatherView(cityVM: cityVM)
            DailyWeatherView(cityVM: cityVM)
        }.padding (.bottom, 30)
    }
}

struct CityFullView_Previews: PreviewProvider {
    static var previews: some View {
        CityFullView(cityVM: CityVM())
    }
}
