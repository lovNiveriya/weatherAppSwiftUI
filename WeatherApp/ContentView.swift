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
            LinearGradient(gradient: Gradient(colors: [.blue,.white]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(.all)
            VStack{
                Text("Gurgao,Haryan")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Spacer()
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}
