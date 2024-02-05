//
//  ContentView.swift
//  WeatherApp
//
//  Created by Gary Thompson on 2/4/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isSunVisible = false
    @State private var hasSunAppeared = false
    
    var body: some View {
        TabView {
            NavigationView {
                VStack {
                    Text("The Weather App ")
                        .fontWeight(.thin)
                        .font(.title)
                        .padding()
                    
                    VStack {
                        if isSunVisible {
                            Image(systemName: "sun.max.fill")
                                .resizable()
                                .frame(width: 90, height: 90)
                                .transition(.move(edge: .top))
                                .offset(y: -15)
                        } else {
                            Image(systemName: "sun.max.fill")
                                .resizable()
                                .frame(width: 90, height: 90)
                                .padding(.top, 5.0)
                        }
                        Text("72°")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    .padding()
                    
                    HStack {
                        NavigationLink(destination: SearchLocation()) {
                            Image(systemName: "location.fill")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.red)
                        }
                        Text("Cleveland" + ", " + "OH")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    .padding()
                    
                    HStack(spacing:20){
                        VStack{
                            Text("3pm")
                            Image(systemName: "sun.max.fill")
                            Text("72°")
                        }
                        VStack{
                            Text("4pm")
                            Image(systemName: "sun.max.fill")
                            Text("71°")
                        }
                        VStack{
                            Text("5pm")
                            Image(systemName: "sun.rain.fill")
                            Text("73°")
                        }
                        VStack{
                            Text("6pm")
                            Image(systemName: "sun.horizon.fill")
                            Text("70°")
                        }
                        VStack{
                            Text("7pm")
                            Image(systemName: "moon.stars.fill")
                            Text("68°")
                        }
                        VStack{
                            Text("8pm")
                            Image(systemName: "moon.stars.fill")
                            Text("64°")
                        }
                    }
                    .padding()
                    
                    VStack{
                        Text("\"Wait a minute, Doc. Are you telling me that you built a time machine... out of a DeLorean?!\" \n - Marty McFly")
                            .fontWeight(.semibold)
                            .font(.title)
                            .multilineTextAlignment(.center)
                    }
                    .padding()
                    
                    Spacer()
                }
                .padding()
                .onAppear {
                    withAnimation {
                        self.isSunVisible = true
                    }
                }
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            
            SearchLocation()
                .tabItem {
                    Image(systemName: "location.circle.fill")
                    Text("Location")
                }
            
            Text("Settings")
                .tabItem {
                    Image(systemName: "gear")
                Text("Settings")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
