//
//  WeeklyRowView.swift
//  project2
//
//  Created by Jina Song on 3/15/26.
//

import SwiftUI

struct WeeklyRowView: View {
    let day: Day
    
    var body: some View {
        HStack {
            Text(day.day)
                .fontWeight(.semibold)
            Spacer()
    
            Image(systemName: day.icon)
                .foregroundColor(day.icon.contains("sun") ? .yellow : .white)
            
            Spacer()
            Text("\(day.low)°")
                .opacity(0.7)
            ZStack {
                RoundedRectangle(cornerRadius: 4)
                    .foregroundStyle(Color(red: 0, green: 0, blue: 0.55))
                    .frame(width: 80, height: 3)
                    .opacity(0.2)
                RoundedRectangle(cornerRadius: 4)
                    .foregroundStyle(Color(red: 0.53, green: 0.81, blue: 1.0))
                    .frame(width: 40, height: 3)
                    .opacity(0.8)
            }
            Text("\(day.high)°")
        }
        .padding(5)
    }
}
