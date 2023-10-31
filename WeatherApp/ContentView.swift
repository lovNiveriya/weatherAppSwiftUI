//
//  ContentView.swift
//  WeatherApp
//
//  Created by LOVE  on 22/10/23.̧̧
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight: Bool = false
    
    var body: some View {
        ZStack{
            BackGroundView(isNight: isNight)
            VStack{
                CityView(cityName: "Agra,UP")
                MainWeatherStatusView(temperatue: "14 °C",
                                      imageName: "cloud.sun")
                HStack{
                    ExtractedView(dayName: "Mon", imageName: "sun.haze", temp:
                                    "75")
                    ExtractedView(dayName: "Tue", 
                                  imageName: "thermometer.sun",
                                  temp: "76")
                    ExtractedView(dayName: "Wed", 
                                  imageName: "sun.max.fill",
                                  temp: "100")
                    ExtractedView(dayName: "Thus", 
                                  imageName: "sun.rain.fill",
                                  temp: "20")
                }
                Spacer()
                Button(action: {
                    isNight.toggle()
                }, label: {
                    WeatherButton(buttonText: "Chnage Daytime", foreGroundColor: .blue, backGroundColor: .white)
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
    
    var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [ isNight ? .gray : .blue ,.white]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(.all)
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

//MARK: WeatherButton

struct WeatherButton: View{
    
    var buttonText: String
    var foreGroundColor: Color
    var backGroundColor: Color
    
    var body: some View{
        Text(buttonText)
            .font(.system(size: 16,weight: .bold))
            .frame(width: 280, height: 50, alignment: .center)
            .background(backGroundColor)
            .cornerRadius(10.0)
            .foregroundColor(foreGroundColor)
    }
    
}
