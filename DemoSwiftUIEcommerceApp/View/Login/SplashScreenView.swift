//
//  SplashScreenView.swift
//  DemoSwiftUIEcommerceApp
//
//  Created by CIPL0957 on 30/01/23.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        NavigationView{
        ZStack{
            Spacer()
            
            Spacer()
           
            VStack {
                ZStack {
                    VStack {
                        ZStack(alignment: .center) {
                            Image("Screenshot1")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                            if #available(iOS 16.0, *) {
                                Text("V&V \n Shopping")
                                    .multilineTextAlignment(.center)
                                //                                .background(Color.black)
                                    .font(
                                        .custom(
                                            "AmericanTypewriter",
                                            fixedSize: 30)
                                        .weight(.black)
                                    )
                                    .foregroundStyle(Color.red.gradient)
                                    .offset(x:0,y:0)
                            } else {
                                // Fallback on earlier versions
                            }
                        }
                        Spacer()
                        NavigationLink(
                            destination: RegisterView()
                                .navigationBarBackButtonHidden(true),
                            label: {
                                HStack {
                                    Text("SIGN UP")
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                    
                                }
                                //                        .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color.red)
                                        .shadow(color: .gray, radius: 2, x: 0, y: 2)
                                )
                            }) .padding([.horizontal],20)
                            .padding([.vertical],0)
                            .padding([.top,.bottom])
                       
                        NavigationLink(
                            destination: LoginView()
                                .navigationBarBackButtonHidden(true),
                            label: {
                                HStack {
                                    Text("LOGIN")
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                    
                                }
                                //                        .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color.red)
                                        .shadow(color: .gray, radius: 2, x: 0, y: 2)
                                )
                            }) .padding([.horizontal],20)
                            .padding([.vertical],0)
                            .padding([.top,.bottom])
                        Spacer()
                       
                    }
                }.background(Color(hex: 0xF9F9F9 ))
                Spacer()
            }
            .zIndex(1)
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }.background(Color(hex: 0xF9F9F9 ))
                .zIndex(1)
                .navigationBarTitle("")
                .navigationBarHidden(true)
    }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
//VStack{
//    NavigationLink(
//        destination: RegisterView()
//            .navigationBarBackButtonHidden(true),
//        label: {
//            HStack {
//                Text("SIGN UP")
//                    .fontWeight(.bold)
//                    .foregroundColor(.white)
//                
//            }
//            //                        .fontWeight(.semibold)
//            .foregroundColor(.white)
//            .frame(minWidth: 0, maxWidth: .infinity)
//            .padding()
//            .background(
//                RoundedRectangle(cornerRadius: 25)
//                    .fill(Color.red)
//                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
//            )
//        }) .padding([.horizontal],20)
//        .padding([.vertical],0)
//        .padding([.top,.bottom])
//    NavigationLink(
//        destination: LoginView()
//            .navigationBarBackButtonHidden(true),
//        label: {
//            HStack {
//                Text("LOGIN")
//                    .fontWeight(.bold)
//                    .foregroundColor(.white)
//                
//            }
//            //                        .fontWeight(.semibold)
//            .foregroundColor(.white)
//            .frame(minWidth: 0, maxWidth: .infinity)
//            .padding()
//            .background(
//                RoundedRectangle(cornerRadius: 25)
//                    .fill(Color.red)
//                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
//            )
//        }) .padding([.horizontal],20)
//        .padding([.vertical],0)
//        .padding([.top,.bottom])
//}
