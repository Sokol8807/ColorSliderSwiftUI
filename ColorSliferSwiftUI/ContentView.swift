//
//  ContentView.swift
//  ColorSliferSwiftUI
//
//  Created by Ilya Sokolov on 22.10.2022.
//

import SwiftUI


struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    @State private var redValue = Double()
    @State private var greenValue = Double()
    @State private var blueValue = Double()
    
    @State private var textFieldSetRed = String()
    @State private var textFieldSetGreen = String()
    @State private var textFieldSetBlue = String()
    
    
    private var colorSet = CGColor(red: 0.5, green: 0.6, blue: 1, alpha: 1)
    
    var body: some View {
        VStack {
            VStack {
                Color(red: redSliderValue / 255, green: greenSliderValue / 255, blue: blueSliderValue / 255)
                    .frame(width: 300, height: 170, alignment: .center)
                    .cornerRadius(20)
            }
            
            VStack {
                SliderView(value: $redSliderValue, textFieldValuer: $textFieldSetRed)
                SliderView(value: $greenSliderValue, textFieldValuer:$textFieldSetGreen)
                SliderView(value: $blueSliderValue, textFieldValuer: $textFieldSetBlue)
                Spacer()
            }
        }
        
    }
}

struct SliderView: View {
    @Binding var value: Double
    @Binding var textFieldValuer: String
    var body: some View{
        HStack {
            Text(lround(value).formatted())
                .frame(width: 40)
            Slider(value: $value, in: 0...255, step: 1)
            TextField(lround(value).formatted(), text: $textFieldValuer)
                
                .frame(width: 40)
                .border(.blue, width: 2)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            
        }.padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
