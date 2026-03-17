//
//  HourlyForecastView.swift
//  project2
//
//  Created by Jina Song on 3/15/26.
//

import SwiftUI

struct HourlyForecastView: View {
    let hours: [Hour]
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "clock")
                Text("HOURLY FORECAST")
                    .font(.subheadline)
                Spacer()
            }
            .padding(5)
            HStack {
                ForEach(hours, id: \.self) { hour in
                    HourlyRowView(hour: hour)}
                
            }
        }
        .padding(5)
        .background(Color(red: 0.096, green: 0.588, blue: 0.976))
        .foregroundColor(.white)
        .cornerRadius(10)
    }
}
