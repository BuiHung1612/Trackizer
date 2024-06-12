//
//  RoudedTextField.swift
//  Trackizer
//
//  Created by HungBui on 12/06/2024.
//

import SwiftUI

struct RoudedTextField: View {
    @Binding var text: String
    @State var title: String = "Title"
    @State var keyboardType: UIKeyboardType = .default
    var isPassword = false
    var body: some View {
        VStack{
            Text(title)
                .font(.customFont(.regular, fontSize: 14))
                .foregroundStyle(Color.gray50)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.bottom, 4)
            TextField("",text: $text)
                .padding(15)
                .frame(height: 48)
                .overlay{
                    RoundedRectangle(cornerRadius: 14)
                        .stroke( Color.gray70, lineWidth: 1)
                }
                .foregroundStyle(.white)
                .background(Color.gray50.opacity(0.05))
                .clipShape(.rect(cornerRadius: 14))
        }
    }
}

#Preview {
    RoudedTextField(text: .constant(""))
}
