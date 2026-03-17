//
//  Toolbar.swift
//  project2
//
//  Created by Jina Song on 3/16/26.
//

import SwiftUI

struct Toolbar: View {
    var body: some View {
        HStack (alignment: .top) {
            Text("10:28")
                .fontWeight(.bold)
            Spacer()
            Image(systemName: "wifi")
            Image(systemName: "battery.100percent")
        }
        .padding(.top, 1)
        .padding(35)
        .ignoresSafeArea(edges: .top)
    }
}
