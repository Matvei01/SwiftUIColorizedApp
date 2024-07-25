//
//  TextFieldView.swift
//  SwiftUIColorizedApp
//
//  Created by Matvei Khlestov on 25.07.2024.
//

import SwiftUI

struct TextFieldView: View {
    
    @Binding var text: String
    
    let action: () -> Void
    
    var body: some View {
        TextField("0", text: $text) { _ in
            withAnimation {
                action()
            }
        }
        .frame(width: 55, alignment: .trailing)
        .multilineTextAlignment(.trailing)
        .textFieldStyle(.roundedBorder)
        .keyboardType(.numberPad)
    }
}

#Preview {
    ZStack {
        Color.secondary
        TextFieldView(text: .constant("143"), action: {})
    }
}
