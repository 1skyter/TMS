//
//  API+Extensions.swift
//  diplom.weather
//
//  Created by Rodion Trach on 14.03.2023.
//

import Foundation

extension API {
    static let baseURLString = "https://api.openweathermap.org/data/2.5/onecall?"
    
    static func getURLFor(lat: Double, lon: Double) -> String {
        return "\(baseURLString)lat=\(lat)&lon=\(lon)&exclude=minutely&appid=\(key)&units=metric"
    }
    
}
