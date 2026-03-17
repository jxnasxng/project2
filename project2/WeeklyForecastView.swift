//
//  WeeklyForecastView.swift
//  project2
//
//  Created by Jina Song on 3/15/26.
//

import SwiftUI

struct WeeklyForecastView: View {
    let days: [Day]
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "calendar")
                Text("10-DAY FORECAST")
                    .font(.subheadline)
                Spacer()
            }
            .padding(5)
            
            ForEach(days, id: \.self) { day in
                    WeeklyRowView(day: day)
            }
        }
        .padding(5)
        .background(LinearGradient(colors: [Color(red: 0.096, green: 0.588, blue: 0.976), Color(red: 0.6, green: 0.8, blue: 1.0)], startPoint: .top, endPoint: .bottom))
        .foregroundColor(.white)
        .cornerRadius(10)
    }
    
}
