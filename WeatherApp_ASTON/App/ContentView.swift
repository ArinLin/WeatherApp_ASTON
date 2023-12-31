//
//  ContentView.swift
//  WeatherApp_ASTON
//
//  Created by Arina on 02.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var cityVM = CityVM()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
                MenuHeader(cityVM: cityVM)
                    .padding()
                ScrollView(showsIndicators: false) {
                    CityFullView(cityVM: cityVM)
                }
                .padding(.top, 10)
            }
            .padding(.top, 50)
        }
        .background(RoundedRectangle(cornerRadius: 5).fill((LinearGradient(gradient: Gradient(colors:[Color.blue.opacity(0.5), Color.blue]), startPoint: .top, endPoint: .bottom)).opacity(0.3)))
        .edgesIgnoringSafeArea(.all)
        .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
