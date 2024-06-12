//
//  SocialSignupView.swift
//  Trackizer
//
//  Created by HungBui on 12/06/2024.
//

import SwiftUI

struct SocialSignupView: View {
    var body: some View {
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
            
            Button(action: {
                
            }, label: {
                ZStack{
                    Image("apple_btn")
                        .resizable()
                        .scaledToFill()
                        .padding(.horizontal,20)
                        .frame(width: .screenWidth, height: 48)
                    HStack{
                        Image("apple")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 15,height: 15)
                        Text("Sign up with Apple")
                            .font(.customFont(.semibold, fontSize: 14))
                    }
                }
            })
            .foregroundStyle(Color.white)
            .shadow(color: .white.opacity(0.3),radius: 5, y:3)
            .padding(.bottom, 15)
            
            Button(action: {
                
            }, label: {
                ZStack{
                    Image("google_btn")
                        .resizable()
                        .scaledToFill()
                        .padding(.horizontal,20)
                        .frame(width: .screenWidth, height: 48)
                    HStack{
                        Image("google")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 15,height: 15)
                        Text("Sign up with Google")
                            .font(.customFont(.semibold, fontSize: 14))
                    }
                }
            })
            .foregroundStyle(Color.grayC)
            .shadow(color: .white.opacity(0.3),radius: 5, y:3)
            .padding(.bottom, 15)
            
            Button(action: {
                
            }, label: {
                ZStack{
                    Image("fb_btn")
                        .resizable()
                        .scaledToFill()
                        .padding(.horizontal,20)
                        .frame(width: .screenWidth, height: 48)
                    HStack{
                        Image("fb")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 15,height: 15)
                        Text("Sign up with Facebook")
                            .font(.customFont(.semibold, fontSize: 14))
                    }
                }
            })
            .foregroundStyle(Color.white)
            .shadow(color: .white.opacity(0.3),radius: 5, y:3)
            .padding(.bottom, 25)
            Text("or")
                .font(.customFont(.regular, fontSize: 14))
                .padding(.horizontal,20)
                .foregroundStyle(.white)
                .padding(.bottom,30)
            SecondaryButton(title: "Sign up with Email"){
                
            }
            .padding(.bottom, 20)
            
            Text("By registering, you agree to our Terms of Use. Learn how we collect, use and share your data.")
                .font(.customFont(.regular, fontSize: 14))
                .foregroundStyle(Color.gray60)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
               
            .padding(.bottom, .bottomInsets)
        }
        .ignoresSafeArea()
        .background(Color.gray80)
    }
    
}

#Preview {
    SocialSignupView()
}
