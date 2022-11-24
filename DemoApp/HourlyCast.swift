//
//  HourlyCast.swift
//  DemoApp
//
//  Created by MG24 on 24.11.22.
//

import SwiftUI

struct HourlyForecast: View {
    let forecast: Weather.Forecast
    
    var body: some View {
        VStack {
            Text(forecast.hour)
            
            forecast.conditions
                .renderingMode(.original)
                .frame(height: 50)
            
            Text(forecast.temperature)
        }
    }
}

struct HourlyForecast_Previews: PreviewProvider {
    static var previews: some View {
        HourlyForecast(forecast: Weather().hourlyForecast[1]).previewLayout(.sizeThatFits)
    }
}
