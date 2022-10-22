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
    
    private var colorSet = CGColor(red: 0.5, green: 0.6, blue: 1, alpha: 1)
    
    var body: some View {
        VStack {
            Color(red: redSliderValue / 255, green: greenSliderValue / 255, blue: blueSliderValue / 255)
                .frame(width: 300, height: 170, alignment: .center)
                .cornerRadius(20)
            SliderView(value: $redSliderValue)
            SliderView(value: $greenSliderValue)
            SliderView(value: $blueSliderValue)
            Spacer()

        }.padding()
    }
}

struct SliderView: View {
    @Binding var value: Double
    var body: some View{
        HStack {
            Text(lround(value).formatted())
                .frame(width: 40)
            Slider(value: $value, in: 0...255, step: 1)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
