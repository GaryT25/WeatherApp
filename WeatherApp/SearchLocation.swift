//
//  SearchLocation.swift
//  WeatherApp
//
//  Created by Gary Thompson on 2/4/24.
//

import SwiftUI

struct SearchLocation: View {
    @State private var text: String = ""
    var body: some View {
        VStack{
            Text("Find Your City 🌆")
                .fontWeight(.semibold)
                .font(.title)
            TextField("Search Location", text: $text)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
        }
        .padding()
        Spacer()
    }

}

#Preview {
    SearchLocation()
}
