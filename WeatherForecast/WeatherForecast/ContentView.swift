//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Project2Morrow on 28/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            DayForecast(day: "Mon",isRainy: false, high: 70,low: 50)
            
            DayForecast(day: "Tue", isRainy: true,high: 60,low: 40)
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    
    let day:String
    let isRainy:Bool
    let high:Int
    let low:Int
    
    var iconName:String{
        if isRainy{
            return "cloud.rain.fill"
        }else{
            return "sun.max.fill"
        }
        
    }
    
    var iconColor:Color{
        if isRainy{
            return Color.blue
        }else{
            return Color.yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(.headline)
            
            Image(systemName: iconName)
                .foregroundColor(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            
            Text("High: \(high)")
                .fontWeight(.semibold)
            
            Text("Low: \(low)")
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}
