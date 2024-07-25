//
//  ColorView.swift
//  SwiftUIColorizedApp
//
//  Created by Matvei Khlestov on 25.07.2024.
//

import SwiftUI

struct ColorView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .frame(height: 130)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 4.0)
            )
    }
}

#Preview {
    ZStack {
        Color.blue
        ColorView(red: 100, green: 100, blue: 100)
    }
}
