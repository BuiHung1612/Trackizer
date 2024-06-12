//
//  SignUpView.swift
//  Trackizer
//
//  Created by HungBui on 12/06/2024.
//

import SwiftUI

struct SignUpView: View {
    @State var txtEmail: String = ""
    var body: some View {
        ZStack{
            VStack{
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5))
                    .padding(.top, .topInsets + 10)
                Spacer()
                
                VStack{
                    Text("E-mail Address")
                        .font(.customFont(.regular, fontSize: 14))
                        .foregroundStyle(Color.gray50)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.bottom, 4)
                    TextField("",text: $txtEmail)
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
                .padding(.horizontal, 20)
                
                HStack{
                    Rectangle()
                        .frame(maxWidth: .infinity,maxHeight: 4)
                        .padding(.horizontal,2)
                    Rectangle()
                        .frame(maxWidth: .infinity,maxHeight: 4)
                        .padding(.horizontal,2)
                    Rectangle()
                        .frame(maxWidth: .infinity,maxHeight: 4)
                        .padding(.horizontal,2)
                    Rectangle()
                        .frame(maxWidth: .infinity,maxHeight: 4)
                        .padding(.horizontal,2)
                }
                .padding(.horizontal,20)
                .foregroundStyle(Color.gray70)
                .padding(.bottom, 20)
                Text("Use 8 or more characters with a mix of letters,\nnumbers & symbols.")
                    .font(.customFont(.regular, fontSize: 14))
                    .foregroundStyle(Color.gray50)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)
                PrimeryButton(title: "Get Started, it's free!"){
                    
                }
                .padding(.bottom,150)
                Text("Do you have already an account?")
                    .font(.customFont(.regular, fontSize: 14))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 30)
               
                SecondaryButton(title: "Sign In"){
                    
                }
                .padding(.bottom, .bottomInsets)
                
            }
        }
        .ignoresSafeArea()
        .background(Color.gray80)
    }
}

#Preview {
    SignUpView()
}
