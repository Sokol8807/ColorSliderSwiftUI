//
//  SlidersView.swift
//  ColorSliferSwiftUI
//
//  Created by Ilya Sokolov on 23.10.2022.
//

import SwiftUI

struct SlidersView: View {
    @Binding var value: Double
    @Binding var textFieldValuer: String
    
    @State var setFromTextField = 0.0
    @FocusState var focusedField: Double?
    var body: some View {
                   HStack {
                Text(lround(value).formatted())
                    .frame(width: 40)
                Slider(value: $value, in: 0...255, step: 1)
                          
                TextField(lround(value).formatted(), text: $textFieldValuer)
                           .focused($focusedField, equals: setFromTextField )
                    
                    .frame(width: 40)
                    .cornerRadius(20)
                    .background(Color.white)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
            }.padding(.horizontal)
        }
    
   
    }

    

