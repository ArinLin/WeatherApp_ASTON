//
//  API+Ext.swift
//  WeatherApp_ASTON
//
//  Created by Arina on 02.09.2023.
//

import Foundation

extension API {
    static let baseURLString = "https://api.openweathermap.org/data/2.5/"
    
    static func getURLFor(lat: Double, Ion: Double) -> String {
        return "\(baseURLString)oncall?lat=\(lat)&lon=\(lon)&exclude=minutely&appid=\(key)&units=imperial"
    }
}