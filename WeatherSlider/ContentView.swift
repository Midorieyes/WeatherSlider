//
//  ContentView.swift
//  WeatherSlider
//
//  Created by Apprenant44 on 24/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State var temperature: Double = 12
    var body: some View {
        VStack{
            ZStack {
                if temperature <= 18{
                    
                    Color.blue
                }else if temperature <= 29{
                    Color.orange
                }else if temperature > 29{
                    Color.red
                    
                }
                VStack{
                    Text("\(Int(temperature))°")
                        .foregroundStyle(Color.gray)
                        .font(.title2)
                
                    if temperature <= 18{
                        Text("Ca caille!!! 🥶")
                            .font(.title)
                            .bold()
                        
                    }else if temperature <= 29{
                        Text("C'est Chill 😎")
                            .font(.title)
                            .bold()
                        
                    }else if temperature > 29{
                        Text("Je brûle !!! 🥵")
                            .font(.title)
                            .bold()
                    }
                
                    Slider(value: $temperature, in: 0...50)
                        .padding(.horizontal, 30)
                }
            }
                
        }
        .ignoresSafeArea()
    }
}
#Preview {
    ContentView()
}
