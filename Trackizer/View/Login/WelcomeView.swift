//
//  WelcomeView.swift
//  Trackizer
//
//  Created by HungBui on 12/06/2024.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            Image("welcome_screen")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack{
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5))
                    .padding(.top, .topInsets + 10)
                Spacer()
                Text("Congue malesuada in ac justo, a tristique\nleo massa. Arcu leo leo urna risus.")
                    .font(.customFont(.regular, fontSize: 14))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 30)
                PrimeryButton(title: "Get Started"){
                    
                }
                .padding(.bottom,16)
                SecondaryButton(title: "I have an account"){
                    
                }
                .padding(.bottom, .bottomInsets)
                
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    WelcomeView()
}
