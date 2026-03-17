//
//  Current.swift
//  project2
//
//  Created by Jina Song on 3/16/26.
//

import SwiftUI

struct Current: View {
    let location: String
    let temp: String
    let condition: String
    let high: String
    let low: String
    
    var body: some View {
        VStack (alignment: .center){
            Text(location)
                .font(.system(size: 35))
                .font(.largeTitle)
                .foregroundStyle(.white)
            Text("\(temp)°")
                .font(.system(size: 90))
                .fontWeight(.thin)
                .font(.largeTitle)
                .foregroundStyle(.white)
            Text(condition)
                .font(.system(size: 20))
                .fontWeight(.light)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            Spacer()
            HStack {
                Text("H:\(high)°")
                    .font(.system(size: 20))
                    .foregroundStyle(.white)
                Text("L:\(low)°")
                    .font(.system(size: 20))
                    .foregroundStyle(.white)
            }
        }
        .padding()
    }
}
