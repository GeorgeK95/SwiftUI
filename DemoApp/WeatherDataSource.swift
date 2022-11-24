//
//  WeatherDataSource.swift
//  DemoApp
//
//  Created by MG24 on 24.11.22.
//

import SwiftUI

struct Weather {
    struct Forecast {
        let hour: String
        let conditions: Image
        let temperature: String
    }
    
    let hourlyForecast = [
        Forecast(hour: "8AM", conditions: Image(systemName: "sun.max.fill"), temperature: "63°"),
        Forecast(hour: "9AM", conditions: Image(systemName: "cloud.sun.fill"), temperature: "63°"),
        Forecast(hour: "10AM", conditions: Image(systemName: "sun.max.fill"), temperature: "64°"),
        Forecast(hour: "11AM", conditions: Image(systemName: "cloud.fill"), temperature: "61°"),
        Forecast(hour: "12PM", conditions: Image(systemName: "cloud.rain.fill"), temperature: "62°")
    ]
}
