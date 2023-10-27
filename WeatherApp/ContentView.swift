//
//  ContentView.swift
//  WeatherApp
//
//  Created by LOVE  on 22/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            BackGroundView(topColor: .blue, bottomColor: .white)
            VStack{
                CityView(cityName: "Agra,UP")
                MainWeatherStatusView(temperatue: "14", imageName: "cloud.sun")
                HStack{
                    ExtractedView(dayName: "Mon", imageName: "sun.haze", temp:
                                    "75")
                    ExtractedView(dayName: "Tue", imageName: "thermometer.sun", temp: "76")
                    ExtractedView(dayName: "Wed", imageName: "sun.max.fill", temp: "100")
                    ExtractedView(dayName: "Thus", imageName: "sun.rain.fill", temp: "20")
                }
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Change DayTime")
                        .font(.system(size: 16,weight: .bold))
                        .frame(width: 280, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.white)
                        .cornerRadius(10.0)
                        .foregroundColor(.blue)
                })
                Spacer()
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}

struct MainWeatherStatusView: View{
    var temperatue: String
    var imageName: String
    
    
    var body: some View{
        VStack(spacing: 2){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .foregroundColor(.white)
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180, alignment: .center)
            
            Text(temperatue)
                .font(.system(size: 80, weight: .bold, design: .default))
                .foregroundColor(.white)
        }
    }
}

struct CityView: View{
    var cityName: String
    
    var body: some View{
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct BackGroundView: View{
    var topColor: Color
    var bottomColor: Color
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor,bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(.all)
    }
    
}

struct ExtractedView: View {
    var dayName: String
    var imageName: String
    var temp: String
    var body: some View {
        VStack(alignment: .center){
            Text("\(dayName)")
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .medium, design: .default))
            Image(systemName: "\(imageName)")
                .renderingMode(.original)
                .resizable()
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
            Text("\(temp)")
                .foregroundColor(.white)
                .font(.system(size: 28, weight: .medium, design: .default))
        }.padding()
    }
}
