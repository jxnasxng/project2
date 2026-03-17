//
//  HourlyRowView.swift
//  project2
//
//  Created by Jina Song on 3/15/26.
//

import SwiftUI

struct HourlyRowView: View {
    let hour: Hour
    
    var body: some View {
        VStack{
            Text(hour.time)
                .font(.system(size: 16))
            Spacer()
            Image(systemName: hour.icon)
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(hour.icon.contains("sun") ? .yellow : .white)
            Spacer()
            Text(hour.temp)
                .font(.system(size: 20))
        }
        .padding(16)
        
    }
}
