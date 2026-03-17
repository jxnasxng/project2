//
//  ContentView.swift
//  project2
//
//  Created by Jina Song on 3/15/26.
//

import SwiftUI

struct ContentView: View {
    var hourlyForecast = [
        Hour(time: "Now", icon: "sun.max.fill", temp: "55°"), Hour(time: "1PM", icon: "sun.max.fill", temp: "56°"), Hour(time: "2PM", icon: "cloud.fill", temp: "55°"), Hour(time: "3PM", icon: "cloud.fill", temp: "54°"), Hour(time: "4PM", icon: "sun.max.fill", temp: "54°")]
    
    var weeklyForecast = [Day(day: "Today", icon: "sun.max.fill", high: 57, low: 45), Day(day: "Tue    ", icon: "cloud.rain.fill", high: 50, low: 39), Day(day: "Wed  ", icon: "cloud.rain.fill", high: 54, low: 40), Day(day: "Thurs", icon: "cloud.fill", high: 60, low: 50), Day(day: "Fri     ", icon: "sun.max.fill", high: 68, low: 57), Day(day: "Sat    ", icon: "sun.max.fill", high: 59, low: 48), Day(day: "Sun   ", icon: "cloud.rain.fill", high: 70, low: 58), Day(day: "Mon  ", icon: "cloud.rain.fill", high: 70, low: 60)]
    
    var body: some View {
        VStack {
            Toolbar()
            Current(location: "Chapel Hill", temp: "55", condition: "Sunny", high: "57", low: "45")
            Spacer(minLength: 50)
            HourlyForecastView(hours: hourlyForecast)
            Spacer()
            WeeklyForecastView(days: weeklyForecast)
        }
        .padding()
        .background(
            LinearGradient(colors: [Color.blue, Color(red: 0.864, green: 0.944, blue: 1.0)],
                           startPoint: .top, endPoint: .bottom)
        )
    }
}

struct Hour: Hashable {
    var id = UUID()
    var time: String
    var icon: String
    var temp: String
}

struct Day: Hashable {
    var id = UUID()
    var day: String
    var icon: String
    var high: Int
    var low: Int
}

#Preview {
    ContentView()
}
