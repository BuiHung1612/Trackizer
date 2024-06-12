//
//  PrimeryButton.swift
//  Trackizer
//
//  Created by HungBui on 12/06/2024.
//

import SwiftUI

struct PrimeryButton: View {
    @State var title: String = "Title"
    var onPressed: (()->())?
    var body: some View {
        Button(action: {
                onPressed?()
            
        }, label: {
            ZStack{
                Image("primary_btn")
                    .resizable()
                    .scaledToFill()
                    .padding(.horizontal)
                    .frame(width: .screenWidth, height: 48)
                Text(title)
                    .font(.customFont(.semibold, fontSize: 14))
                    .padding(.horizontal,20)
            }
        })
        .foregroundStyle(.white)
        .shadow(color: .secondaryC.opacity(0.5),radius: 5, y:3)    }
}

#Preview {
    PrimeryButton()
}
