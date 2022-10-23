//
//  ColorBackView.swift
//  ColorSliferSwiftUI
//
//  Created by Ilya Sokolov on 23.10.2022.
//

import SwiftUI

struct ColorBackView: View {
    var body: some View {
        Color(.cyan)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ColorBackView_Previews: PreviewProvider {
    static var previews: some View {
        ColorBackView()
    }
}
